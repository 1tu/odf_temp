---
to: src/system/<%= Name %>/S.<%= Name %>.module.ts
---
import { Container, IocModule } from '_common/IoC';
import { S<%= Name %>Transport, S<%= Name %>TransportTid } from '_system/<%= Name %>';

export class S<%= Name %>Module implements IocModule {
  public Configure(ioc: Container): void {
    ioc.bind<S<%= Name %>Transport>(S<%= Name %>TransportTid).to(S<%= Name %>Transport);
  }
}
