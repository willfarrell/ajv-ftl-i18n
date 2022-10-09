import transpileImport from './transpile.js'
import ar from './locale/ar.js'
import ca from './locale/ca.js'
import cs from './locale/cs.js'
import de from './locale/de.js'
import en from './locale/en.js'
import es from './locale/es.js'
import fi from './locale/fi.js'
import fr from './locale/fr.js'
import hu from './locale/hu.js'
import id from './locale/id.js'
import it from './locale/it.js'
import ja from './locale/ja.js'
import ko from './locale/ko.js'
import nb from './locale/nb.js'
import nl from './locale/nl.js'
import pl from './locale/pl.js'
import ptBR from './locale/pt-BR.js'
import ru from './locale/ru.js'
import sk from './locale/sk.js'
import sv from './locale/sv.js'
import th from './locale/th.js'
import zh from './locale/zh.js'
import zhTW from './locale/zh-TW.js'

export const transpile = transpileImport

export default {
  transpile,
  ar,
  ca,
  cs,
  de,
  en,
  es,
  fi,
  fr,
  hu,
  id,
  it,
  ja,
  ko,
  nb,
  nl,
  pl,
  'pt-BR': ptBR,
  ru,
  sk,
  sv,
  th,
  zh,
  'zh-TW': zhTW
}
