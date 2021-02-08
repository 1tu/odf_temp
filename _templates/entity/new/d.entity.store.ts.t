---
to: src/domain/<%= Name %>/D.<%= Name %>.store.ts
---
import { Inject, Injectable } from '_common/IoC';
import { ID<%= Name %>Gateway, D<%= Name %>GatewayTid } from './D.<%= Name %>.types';

export const D<%= Name %>StoreTid = Symbol.for('D<%= Name %>Store')

@Injectable()
export class D<%= Name %>Store {
  constructor(
    @Inject(D<%= Name %>GatewayTid) private _gateway: ID<%= Name %>Gateway
  ) {}
}
