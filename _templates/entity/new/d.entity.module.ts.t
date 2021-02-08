---
to: src/domain/<%= Name %>/D.<%= Name %>.module.ts
---
import { Container, IocModule } from '_common/IoC';
import {
  D<%= Name %>Gateway, D<%= Name %>Store, D<%= Name %>StoreTid,
  D<%= Name %>Case, D<%= Name %>CaseTid,
  D<%= Name %>ListCase, D<%= Name %>ListCaseTid
} from '_domain/<%= Name %>';
import { ID<%= Name %>Gateway, D<%= Name %>GatewayTid } from '_domain/<%= Name %>/D.<%= Name %>.types';

export class D<%= Name %>Module implements IocModule {
  public Configure(ioc: Container): void {
    ioc.bind<ID<%= Name %>Gateway>(D<%= Name %>GatewayTid).to(D<%= Name %>Gateway).inSingletonScope();
    ioc.bind<D<%= Name %>Store>(D<%= Name %>StoreTid).to(D<%= Name %>Store).inSingletonScope();
    ioc.bind<D<%= Name %>Case>(D<%= Name %>CaseTid).to(D<%= Name %>Case);
    ioc.bind<D<%= Name %>ListCase>(D<%= Name %>ListCaseTid).to(D<%= Name %>ListCase);
  }
}
