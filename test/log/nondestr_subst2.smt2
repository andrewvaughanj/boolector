(set-logic QF_ABV)
(declare-fun _substvar_4507_ () (_ BitVec 1))
(declare-fun _substvar_4561_ () (_ BitVec 1))
(declare-fun _substvar_4564_ () (_ BitVec 1))
(declare-fun _substvar_4640_ () (_ BitVec 32))
(declare-fun _substvar_4739_ () (_ BitVec 1))
(declare-fun _substvar_4821_ () (_ BitVec 1))
(declare-fun _substvar_4839_ () (_ BitVec 1))
(declare-fun _substvar_4908_ () (_ BitVec 1))
(declare-fun _substvar_4947_ () (_ BitVec 1))
(declare-fun _substvar_4950_ () (_ BitVec 1))
(declare-fun _substvar_4951_ () (_ BitVec 32))
(declare-fun _substvar_4956_ () (_ BitVec 1))
(declare-fun _substvar_4957_ () (_ BitVec 1))
(declare-fun _substvar_5054_ () (_ BitVec 1))
(declare-fun _substvar_5056_ () (_ BitVec 1))
(declare-fun _substvar_5057_ () (_ BitVec 32))
(declare-fun _substvar_5247_ () (_ BitVec 32))
(declare-fun _substvar_5275_ () (_ BitVec 32))
(declare-fun _substvar_5289_ () (_ BitVec 1))
(declare-fun _substvar_5297_ () (_ BitVec 1))
(declare-fun _substvar_5311_ () (_ BitVec 1))
(declare-fun _substvar_5315_ () (_ BitVec 64))
(declare-fun _substvar_5317_ () (_ BitVec 32))
(declare-fun _substvar_5325_ () (_ BitVec 1))
(declare-fun _substvar_5345_ () (_ BitVec 1))
(declare-fun _substvar_5346_ () (_ BitVec 1))
(declare-fun _substvar_5360_ () (_ BitVec 64))
(declare-fun _substvar_5364_ () (_ BitVec 1))
(declare-fun _substvar_5381_ () (_ BitVec 32))
(declare-fun _substvar_5385_ () (_ BitVec 64))
(declare-fun _substvar_5446_ () (_ BitVec 32))
(declare-fun _substvar_5464_ () (_ BitVec 64))
(declare-fun _substvar_5470_ () (_ BitVec 1))
(declare-fun _substvar_5527_ () (_ BitVec 32))
(declare-fun _substvar_5544_ () (_ BitVec 1))
(declare-fun _substvar_5549_ () (_ BitVec 64))
(declare-fun _substvar_5612_ () (_ BitVec 32))
(declare-fun _substvar_5617_ () (_ BitVec 32))
(declare-fun _substvar_5620_ () (_ BitVec 32))
(declare-fun _substvar_5630_ () (_ BitVec 32))
(declare-fun _substvar_5654_ () (_ BitVec 32))
(declare-fun _substvar_5665_ () (_ BitVec 32))
(declare-fun _substvar_5675_ () (_ BitVec 1))
(declare-fun _substvar_6411_ () Bool)
(declare-fun _substvar_6426_ () Bool)
(declare-fun _substvar_6450_ () Bool)
(declare-fun _substvar_6465_ () Bool)
(declare-fun |UNROLL#4566| () (Array (_ BitVec 5) (_ BitVec 32)))
(define-fun |UNROLL#4617| () Bool (and _substvar_6426_ _substvar_6465_))
(define-fun |UNROLL#4616| () (_ BitVec 1) (ite |UNROLL#4617| #b1 #b0))
(define-fun |UNROLL#4615| () Bool (= ((_ extract 0 0) |UNROLL#4616|) #b1))
(define-fun |UNROLL#4649| () (_ BitVec 1) #b1)
(define-fun |UNROLL#4614| () (_ BitVec 1) (ite |UNROLL#4615| |UNROLL#4649| #b0))
(define-fun |UNROLL#4608| () (_ BitVec 1) |UNROLL#4614|)
(define-fun |UNROLL#4598| () (_ BitVec 1) |UNROLL#4608|)
(define-fun |UNROLL#4596| () (_ BitVec 1) |UNROLL#4598|)
(define-fun |UNROLL#4595| () (_ BitVec 1) |UNROLL#4596|)
(define-fun |UNROLL#4658| () (_ BitVec 1) |UNROLL#4616|)
(define-fun |UNROLL#4657| () Bool (= ((_ extract 0 0) |UNROLL#4658|) #b1))
(define-fun |UNROLL#4656| () (_ BitVec 32) (ite |UNROLL#4657| _substvar_5057_ (_ bv0 32)))
(define-fun |UNROLL#4655| () (_ BitVec 5) ((_ extract 24 20) |UNROLL#4656|))
(define-fun |UNROLL#4654| () (_ BitVec 32) (select |UNROLL#4566| |UNROLL#4655|))
(define-fun |UNROLL#4585| () Bool (and true true true true (= |UNROLL#4595| _substvar_5054_) (= |UNROLL#4654| _substvar_5617_) true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true))
(assert |UNROLL#4585|)
(define-fun |UNROLL#5151| () (_ BitVec 1) _substvar_5054_)
(define-fun |UNROLL#5562| () (_ BitVec 32) _substvar_5617_)
(define-fun |UNROLL#5561| () (_ BitVec 32) |UNROLL#5562|)
(declare-fun |UNROLL#5682| () (Array (_ BitVec 5) (_ BitVec 32)))
(define-fun |UNROLL#5143| () Bool (and true true true (= |UNROLL#5151| _substvar_5289_) true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true (= |UNROLL#5561| _substvar_5275_) true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true))
(assert |UNROLL#5143|)
(define-fun |UNROLL#5707| () (_ BitVec 1) _substvar_5289_)
(define-fun |UNROLL#5834| () (_ BitVec 32) _substvar_5275_)
(define-fun |UNROLL#5833| () (_ BitVec 32) (bvadd (_ bv0 32) |UNROLL#5834|))
(define-fun |UNROLL#5832| () (_ BitVec 32) (bvadd |UNROLL#5833| (_ bv0 32)))
(define-fun |UNROLL#5837| () Bool (= ((_ extract 0 0) |UNROLL#5832|) #b1))
(define-fun |UNROLL#5828| () Bool (or false false |UNROLL#5837| false))
(define-fun |UNROLL#5827| () Bool (not |UNROLL#5828|))
(define-fun |UNROLL#5822| () Bool |UNROLL#5827|)
(define-fun |UNROLL#5821| () (_ BitVec 1) (ite |UNROLL#5822| #b1 #b0))
(define-fun |UNROLL#5820| () Bool (= ((_ extract 0 0) |UNROLL#5821|) #b1))
(define-fun |UNROLL#5773| () Bool (or false false |UNROLL#5820| false))
(define-fun |UNROLL#5772| () (_ BitVec 32) (ite |UNROLL#5773| (_ bv0 32) _substvar_4951_))
(define-fun |UNROLL#5848| () (_ BitVec 5) ((_ extract 19 15) |UNROLL#5772|))
(define-fun |UNROLL#5847| () (_ BitVec 32) (select |UNROLL#5682| |UNROLL#5848|))
(define-fun |UNROLL#6038| () Bool (not |UNROLL#5773|))
(define-fun |UNROLL#6104| () Bool |UNROLL#6038|)
(define-fun |UNROLL#6103| () (_ BitVec 1) (ite |UNROLL#6104| (_ bv0 1) _substvar_4564_))
(define-fun |UNROLL#6102| () (_ BitVec 1) |UNROLL#6103|)
(define-fun |UNROLL#6233| () (Array (_ BitVec 5) (_ BitVec 32)) (store |UNROLL#5682| (_ bv0 5) (_ bv0 32)))
(declare-fun |UNROLL#6240| () (Array (_ BitVec 5) (_ BitVec 32)))
(define-fun |UNROLL#5701| () Bool (and true true (= |UNROLL#5707| _substvar_5297_) true true true (= |UNROLL#5847| _substvar_5654_) true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true (= |UNROLL#6102| _substvar_5470_) true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true (= |UNROLL#6233| |UNROLL#6240|)))
(assert |UNROLL#5701|)
(define-fun |UNROLL#6263| () (_ BitVec 1) _substvar_5297_)
(define-fun |UNROLL#6382| () Bool (= ((_ extract 0 0) _substvar_5470_) #b1))
(define-fun |UNROLL#6381| () Bool |UNROLL#6382|)
(define-fun |UNROLL#6380| () Bool |UNROLL#6381|)
(define-fun |UNROLL#6379| () (_ BitVec 1) (ite |UNROLL#6380| #b1 #b0))
(define-fun |UNROLL#6378| () Bool (= ((_ extract 0 0) |UNROLL#6379|) #b1))
(define-fun |UNROLL#6329| () (_ BitVec 5) ((_ extract 24 20) _substvar_5665_))
(define-fun |UNROLL#6328| () (_ BitVec 32) (select |UNROLL#6240| |UNROLL#6329|))
(define-fun |UNROLL#6658| () (_ BitVec 1) (ite |UNROLL#6378| _substvar_4561_ (_ bv0 1)))
(define-fun |UNROLL#6686| () (_ BitVec 32) _substvar_5654_)
(define-fun |UNROLL#6685| () (_ BitVec 32) (ite |UNROLL#6378| (_ bv0 32) |UNROLL#6686|))
(define-fun |UNROLL#6259| () Bool (and true (= |UNROLL#6263| _substvar_5056_) true true true (= |UNROLL#6328| _substvar_5247_) true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true (= _substvar_5665_ _substvar_4640_) true true true true true true true true true true true true (= |UNROLL#6658| _substvar_5346_) true true true true true (= |UNROLL#6685| _substvar_5446_) true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true))
(assert |UNROLL#6259|)
(define-fun |UNROLL#6949| () (_ BitVec 32) (bvadd _substvar_5446_ (_ bv0 32)))
(define-fun |UNROLL#6948| () (_ BitVec 32) (bvadd |UNROLL#6949| (_ bv0 32)))
(define-fun |UNROLL#6947| () Bool (= ((_ extract 0 0) |UNROLL#6948|) #b1))
(define-fun |UNROLL#6945| () Bool |UNROLL#6947|)
(define-fun |UNROLL#6944| () Bool |UNROLL#6945|)
(define-fun |UNROLL#7206| () (_ BitVec 1) _substvar_5346_)
(define-fun |UNROLL#7214| () (_ BitVec 1) (ite |UNROLL#6944| #b1 #b0))
(define-fun |UNROLL#7224| () (_ BitVec 32) _substvar_4640_)
(define-fun |UNROLL#7226| () (_ BitVec 32) _substvar_5247_)
(define-fun |UNROLL#7288| () (_ BitVec 1) _substvar_5056_)
(define-fun |UNROLL#6817| () Bool (and true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true (= |UNROLL#7206| _substvar_5345_) true (= |UNROLL#7214| _substvar_5364_) true true (= |UNROLL#7224| _substvar_5612_) (= |UNROLL#7226| _substvar_5620_) true true true true true true true true true true true true true true true true true true true true true true (= |UNROLL#7288| _substvar_5675_) true true true true true true true true true true true true true))
(assert |UNROLL#6817|)
(define-fun |UNROLL#7393| () Bool (and _substvar_6411_ (= ((_ extract 0 0) _substvar_5345_) #b1)))
(define-fun |UNROLL#7392| () (_ BitVec 1) (ite |UNROLL#7393| _substvar_5364_ #b0))
(define-fun |UNROLL#7391| () Bool (= ((_ extract 0 0) |UNROLL#7392|) #b1))
(define-fun |UNROLL#7515| () Bool |UNROLL#7393|)
(define-fun |UNROLL#7514| () Bool (and |UNROLL#7515| _substvar_6450_))
(define-fun |UNROLL#7519| () (_ BitVec 1) (ite |UNROLL#7391| #b1 #b0))
(define-fun |UNROLL#7513| () (_ BitVec 1) (ite |UNROLL#7514| #b1 |UNROLL#7519|))
(define-fun |UNROLL#7651| () (_ BitVec 32) _substvar_5620_)
(define-fun |UNROLL#7739| () (_ BitVec 32) _substvar_5612_)
(define-fun |UNROLL#7812| () (_ BitVec 1) (ite (= ((_ extract 0 0) _substvar_5675_) #b1) #b1 #b0))
(define-fun |UNROLL#7809| () Bool (= ((_ extract 0 0) |UNROLL#7812|) #b1))
(define-fun |UNROLL#7808| () (_ BitVec 1) (ite |UNROLL#7809| #b1 (_ bv0 1)))
(define-fun |UNROLL#7807| () (_ BitVec 1) |UNROLL#7808|)
(define-fun |UNROLL#7820| () (_ BitVec 1) (ite (= ((_ extract 0 0) |UNROLL#7513|) #b1) #b0 _substvar_4507_))
(define-fun |UNROLL#7819| () (_ BitVec 1) |UNROLL#7820|)
(define-fun |UNROLL#7375| () Bool (and true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true (= |UNROLL#7651| _substvar_5527_) true true true true true true true true true true true true true true true true true true true (= |UNROLL#7739| _substvar_5630_) true true true true true true true true true true true true (= |UNROLL#7807| _substvar_4956_) true true true true true (= |UNROLL#7819| _substvar_4821_) true true true true true true true true true true true true true true true true true true true true true true true true (= _substvar_5385_ _substvar_5315_) true))
(assert |UNROLL#7375|)
(define-fun |UNROLL#8369| () (_ BitVec 1) _substvar_4821_)
(define-fun |UNROLL#8368| () (_ BitVec 1) |UNROLL#8369|)
(define-fun |UNROLL#8366| () (_ BitVec 1) _substvar_4956_)
(define-fun |UNROLL#8365| () (_ BitVec 1) |UNROLL#8366|)
(define-fun |UNROLL#8393| () (_ BitVec 64) (ite (= ((_ extract 0 0) _substvar_4821_) #b1) (_ bv0 64) _substvar_5464_))
(define-fun |UNROLL#8392| () (_ BitVec 64) |UNROLL#8393|)
(define-fun |UNROLL#8402| () (_ BitVec 32) _substvar_5630_)
(define-fun |UNROLL#8418| () Bool (bvult _substvar_5464_ _substvar_5315_))
(define-fun |UNROLL#8417| () Bool (and (= ((_ extract 0 0) |UNROLL#8368|) #b1) |UNROLL#8418|))
(define-fun |UNROLL#8416| () Bool |UNROLL#8417|)
(define-fun |UNROLL#8415| () (_ BitVec 1) (ite |UNROLL#8416| #b1 _substvar_5311_))
(define-fun |UNROLL#8413| () (_ BitVec 1) |UNROLL#8415|)
(define-fun |UNROLL#8410| () (_ BitVec 1) |UNROLL#8413|)
(define-fun |UNROLL#7933| () Bool (and true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true (= |UNROLL#8365| _substvar_4739_) (= _substvar_5527_ _substvar_5317_) true true true true true true true true true true (= |UNROLL#8392| _substvar_5360_) true true true true true (= |UNROLL#8402| _substvar_5381_) true true (= |UNROLL#8410| _substvar_5325_) true true true true true true true true true (= _substvar_5315_ _substvar_5549_) true))
(assert |UNROLL#7933|)
(push 1)
(assert false)
(set-info :status unsat)
(check-sat)
(pop 1)
(define-fun |UNROLL#8480| () Bool true)
(define-fun |UNROLL#8485| () Bool (= ((_ extract 0 0) _substvar_4947_) #b1))
(define-fun |UNROLL#8488| () Bool (or (= ((_ extract 0 0) _substvar_4957_) #b1) (not (= ((_ extract 0 0) _substvar_4950_) #b1))))
(define-fun |UNROLL#8479| () Bool (and |UNROLL#8480| |UNROLL#8485| |UNROLL#8488|))
(assert |UNROLL#8479|)
(define-fun |UNROLL#8926| () (_ BitVec 1) (ite (= ((_ extract 0 0) _substvar_4739_) #b1) #b0 _substvar_4839_))
(define-fun |UNROLL#9003| () (_ BitVec 5) ((_ extract 24 20) _substvar_5381_))
(define-fun |UNROLL#9002| () Bool (= (_ bv0 5) |UNROLL#9003|))
(define-fun |UNROLL#9001| () Bool (and (= ((_ extract 0 0) _substvar_5325_) #b1) |UNROLL#9002|))
(define-fun |UNROLL#9000| () (_ BitVec 1) (ite |UNROLL#9001| #b1 #b0))
(define-fun |UNROLL#8999| () (_ BitVec 1) |UNROLL#9000|)
(define-fun |UNROLL#8998| () (_ BitVec 1) |UNROLL#8999|)
(define-fun |UNROLL#9006| () (_ BitVec 32) _substvar_5317_)
(define-fun |UNROLL#9005| () Bool (= (_ bv0 32) |UNROLL#9006|))
(define-fun |UNROLL#9018| () Bool (= _substvar_5549_ _substvar_5360_))
(define-fun |UNROLL#9020| () (_ BitVec 1) #b1)
(define-fun |UNROLL#9019| () (_ BitVec 1) |UNROLL#9020|)
(define-fun |UNROLL#8491| () Bool (and true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true (= |UNROLL#8998| _substvar_4908_) (= (ite |UNROLL#9005| #b1 #b0) _substvar_5544_) true true (= (ite |UNROLL#9018| #b1 #b0) _substvar_4957_) (= |UNROLL#9019| _substvar_4950_) (= |UNROLL#8926| _substvar_4947_) true true true))
(assert |UNROLL#8491|)
(push 1)
(define-fun |UNROLL#9032| () Bool true)
(define-fun |UNROLL#9033| () Bool (or (= ((_ extract 0 0) _substvar_5544_) #b1) (not (= ((_ extract 0 0) _substvar_4908_) #b1))))
(define-fun |UNROLL#9031| () Bool (and |UNROLL#9032| |UNROLL#9033|))
(assert (not |UNROLL#9031|))
(check-sat)
(exit)
