library(DiagrammeR)

grViz("
      digraph boxes_and_circles {
      
      node [shape = circle]
      MCMC; Metropolis; 'Metropolis Hastings'; 'Hamilton MC'; 'Gibbs Sampling'; BUGS; JAGS

      node [shape = box
            fontname = Helvetica
            penwidth = 2.0]
      'symmetric proposal'; 'asymmetric proposal'; 'high cost, high efficiency'; 'continous parameters';
        'full sweep'; 'conjugate pairs/priors'; 'adaptive proposal'
      
      edge [ arrowhead = NULL]
      MCMC -> 'Metropolis' [label = ' algorithm'];
      MCMC -> 'Metropolis Hastings' [label = ' algorithm'];
      Metropolis -> 'symmetric proposal';
      'Metropolis Hastings' -> 'asymmetric proposal';
      'Metropolis Hastings' -> 'Gibbs Sampling' [label = ' technique'];
      'Metropolis Hastings' -> 'Hamilton MC' [label = ' technique'];
      'Gibbs Sampling' -> 'adaptive proposal';
      'Gibbs Sampling' -> BUGS [label = ' software'];
      'Gibbs Sampling' -> 'conjugate pairs/priors';
      'Gibbs Sampling' -> JAGS;
      'Hamilton MC' -> 'full sweep';
      'Hamilton MC' -> 'continous parameters';
      'Hamilton MC' -> 'high cost, high efficiency'
      
      }
      ")