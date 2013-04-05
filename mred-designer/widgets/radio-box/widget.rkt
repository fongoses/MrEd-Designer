#lang racket

(require "../../mred-plugin.rkt"
         "../../default-values.rkt"
         racket/gui/base)

(make-plugin
 [type 'radio-box]
 [tooltip "Radio Box"]
 [button-group "Controls"]
 [widget-class radio-box%]
 [parent-class container-classes]
 [necessary '(label choices parent)] ; necessary properties
 [options '(callback)]
 ( ; widget properties
  [label (prop:false-or-string "Radio Box")]
  [choices '("&First" "&Second")]
  [callback (prop:code (lambda (radio-box control-event) (void)))]
  [style (prop:proc
          (prop:group (prop:one-of '(vertical horizontal) 'vertical)
                      (prop:one-of '(vertical-label horizontal-label)
                                   'horizontal-label)
                      (prop:some-of '(deleted) '()))
          (λ(l)(list* (first l) (second l) (third l))))]
  [font (font-values)]
  [selection (prop:false-or-number 0)]
  [enabled #t]
  [vert-margin 2]
  [horiz-margin 2]
  [min-width 0]
  [min-height 0]
  [stretchable-width #f]
  [stretchable-height #f]
  ))