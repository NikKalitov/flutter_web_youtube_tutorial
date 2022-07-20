// ignore_for_file: constant_identifier_names
const RootRoute = '/';

const OverViewPageDisplayName = 'Overview';
const OverViewPageRoute = '/overview';

const DriversPageDisplayName = 'Drivers';
const DriversPageRoute = '/drivers';

const ClientsPageDisplayName = 'Clients';
const ClientsPageRoute = '/clients';

const AuthenticationDisplayName = 'Log Out';
const AuthenticationPageRoute = '/auth';

class MenuItem {
  final String name;
  final String route;

  MenuItem({required this.name, required this.route});
}

List<MenuItem> sideMenuItems = [
  MenuItem(name: OverViewPageDisplayName, route: OverViewPageRoute),
  MenuItem(name: DriversPageDisplayName, route: DriversPageRoute),
  MenuItem(name: ClientsPageDisplayName, route: ClientsPageRoute),
  MenuItem(name: AuthenticationDisplayName, route: AuthenticationPageRoute),
  // OverViewPageRoute,
  // DriversPageRoute,
  // ClientsPageRoute,
  // AuthenticationPageRoute,
];
