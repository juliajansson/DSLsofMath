%if False
\begin{code}
{-# LANGUAGE GADTs #-}
module Either where
import Prelude hiding (Either(Left,Right), either)
\end{code}
%endif

\begin{code}
data Either p q where
  Left   :: p  ->  Either p q    -- |orIntroL|
  Right  :: q  ->  Either p q    -- |orIntroR|

either :: (p->r) -> (q->r) -> (Either p q -> r)
either l r (Left x)   =  l x
either l r (Right y)  =  r y
\end{code}
