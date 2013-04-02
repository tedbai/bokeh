HasProperties = require('../../base').HasProperties


class GridMapper extends HasProperties

  map_to_target: (x, y) ->
    xprime = @get('domain_mapper').map_to_target(x)
    yprime = @get('codomain_mapper').map_to_target(y)
    return [xprime, yprime]

  v_map_to_target: (xs, ys) ->
    xprimes = @get('domain_mapper').v_map_to_target(xs)
    yprimes = @get('codomain_mapper').v_map_to_target(ys)
    return [xprimes, yprimes]

  map_from_target: (xprime, yprime) ->
    x = @get('domain_mapper').map_to_target(xprime)
    y = @get('codomain_mapper').map_to_target(yprime)
    return [x, y]

  v_map_from_target: (xprimes, yprimes) ->
    xs = @domain_mapper.v_map_to_target(xprimes)
    ys = @codomain_mapper.v_map_to_target(yprimes)
    return [xs, ys]


exports.GridMapper = GridMapper