//
//  ___COPYRIGHT___
//
import UIKit

/// Base protocol for all views. If need to do custom transition then should
/// create new protocol, implement current and override desired method.
///
/// Examples:
///
/// 1. If screen A can be open from screnn B with custom transition
///
/// ```
/// protocol CustomModuleTransitionable: class, ModuleTransitionable {
/// }
///
/// extension CustomModuleTransitionable {
///    func showModule(_ module: UIViewController) {
///        *do something custom to show B*
///    }
///}
/// ```
///
/// 2. If screen A can be open from screen B, C, D in different ways
///
/// ```
///protocol CustomModuleTransitionable: class, ModuleTransitionable {
///    func showModuleWithCustomTransitionFromB(_ module: UIViewController)
///    func showModuleWithCustomTransitionFromC(_ module: UIViewController)
///    func showModuleWithCustomTransitionFromD(_ module: UIViewController)
///}
///
///extension CustomModuleTransitionable {
///    func showModuleWithCustomTransitionFromB(_ module: UIViewController) {
///        *do something custom to show from B*
///    }
///    func showModuleWithCustomTransitionFromC(_ module: UIViewController) {
///        *do something custom to show from С*
///    }
///    func showModuleWithCustomTransitionFromD(_ module: UIViewController) {
///        *do something custom to show from D*
///    }
///}
///```
protocol ModuleTransitionable: AnyObject {

    /// Presents a view controller in a primary context.
    ///
    /// - Parameter module: Module that should be presented.
    func showModule(_ module: UIViewController)

    /// Dismisses the view controller that was presented modally by the view controller.
    ///
    /// - Parameters:
    ///   - animated: Pass true to animate the transition.
    ///   - completion: The block to execute after the view controller is dismissed.
    /// This block has no return value and takes no parameters. You may specify nil for this parameter.
    func dismissView(animated: Bool, completion: (() -> Void)?)

    /// Presents the module modally.
    ///
    /// - Parameters:
    ///   - module: Module that should be presented.
    ///   - animated: Pass true to animate the transition.
    ///   - completion: The block to execute after the view controller is presnted.
    /// This block has no return value and takes no parameters. You may specify nil for this parameter.
    func presentModule(_ module: UIViewController, animated: Bool, completion: (() -> Void)?)

    /// Pops a top module from the navigation stack and updates the display.
    ///
    /// - Parameter animated: Pass true to animate the transition.
    func pop(animated: Bool)

    /// Pops a root module from the navigation stack and updates the display.
    ///
    /// - Parameter animated: Pass true to animate the transition.
    func popToRoot(animated: Bool)

    /// Pushes the module onto the receiver’s stack and updates the display.
    ///
    /// - Parameters:
    ///   - module: Module that should be presented.
    ///   - animated: Pass true to animate the transition.
    func push(module: UIViewController, animated: Bool)

    /// Pushes the module onto the receiver’s stack and updates the display.
    ///
    /// - Parameters:
    ///   - module: Module that should be presented.
    ///   - animated: Pass true to animate the transition.
    ///   - hideTabBar: Pass true to hide a tab bar.
    func push(module: UIViewController, animated: Bool, hideTabBar: Bool)

}

extension ModuleTransitionable where Self: UIViewController {

    func showModule(_ module: UIViewController) {
        self.show(module, sender: nil)
    }

    func dismissView(animated: Bool, completion: (() -> Void)?) {
        self.dismiss(animated: animated, completion: completion)
    }

    func presentModule(_ module: UIViewController, animated: Bool, completion: (() -> Void)?) {
        self.present(module, animated: animated, completion: completion)
    }

    func pop(animated: Bool) {
        self.navigationController?.popViewController(animated: animated)
    }

    func popToRoot(animated: Bool) {
        self.navigationController?.popToRootViewController(animated: animated)
    }

    func push(module: UIViewController, animated: Bool) {
        self.navigationController?.pushViewController(module, animated: animated)
    }

    func push(module: UIViewController, animated: Bool, hideTabBar: Bool = false) {
        module.hidesBottomBarWhenPushed = hideTabBar
        push(module: module, animated: animated)
    }

}
