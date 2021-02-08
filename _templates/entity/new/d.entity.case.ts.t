---
to: src/domain/<%= Name %>/case/D.<%= Name %>.case.ts
---
import { action, observable } from 'mobx';

import { Inject, Injectable } from '_common/IoC';
import { TDomainId } from '_domain/_common/Domain.types';
import { ID<%= Name %>Gateway, D<%= Name %>GatewayTid } from '_domain/<%= Name %>/D.<%= Name %>.types';
import { D<%= Name %>Store, D<%= Name %>StoreTid } from '_domain/<%= Name %>';

export const D<%= Name %>CaseTid = Symbol.for('D<%= Name %>CaseTid');

export interface ID<%= Name %>CaseProps {
  id: TDomainId;
}

@Injectable()
export class D<%= Name %>Case {
  @observable.ref public props!: ID<%= Name %>CaseProps;

  constructor(
    @Inject(D<%= Name %>GatewayTid) private _gw: ID<%= Name %>Gateway,
    @Inject(D<%= Name %>StoreTid) private _store: D<%= Name %>Store,
  ) {}

  @action
  public init(props: ID<%= Name %>CaseProps) {
    this.props = props
  }
}
