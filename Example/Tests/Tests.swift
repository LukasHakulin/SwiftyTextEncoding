import XCTest
@testable import SwiftyTextEncoding

class Tests: XCTestCase {

    // Generated 50 paragraphs, 4637 words, 31356 bytes of Lorem Ipsum
    let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue mauris, sodales eget purus quis, commodo molestie nisl. Vestibulum vitae rhoncus eros. Etiam iaculis sollicitudin nunc sit amet vehicula. Proin viverra tempor blandit. Integer semper lectus vel tortor tempus, ac efficitur tortor malesuada. Nam elementum tellus ut rhoncus tincidunt. Morbi feugiat vel nibh eget tristique. Pellentesque maximus at purus quis posuere. Fusce viverra tempus dolor, sed scelerisque enim sodales et.Proin varius in turpis ut molestie. Sed imperdiet euismod mauris. Praesent ut mauris nec nulla commodo tristique in et lacus. Donec sit amet ligula lectus. Etiam in augue eget sem consectetur auctor. Vestibulum rhoncus sit amet sem eleifend pulvinar. Maecenas viverra, tortor et auctor posuere, libero erat sollicitudin nulla, sit amet sodales massa orci id magna. Nam eu mattis diam, ut consectetur augue. Vestibulum ac felis vel mi tincidunt fermentum. Aenean id semper felis. Cras placerat vehicula turpis, ac dictum erat interdum ut. Nullam a orci justo. Vivamus venenatis ante eu scelerisque feugiat. Pellentesque interdum ultricies sollicitudin.Etiam semper enim nec ipsum venenatis consectetur. Aenean sit amet condimentum risus, eu aliquet nulla. Sed quam ante, porta a ligula tempor, vulputate porttitor ipsum. Cras ornare interdum finibus. Morbi at nisl et velit consequat efficitur eleifend volutpat nibh. Etiam odio purus, venenatis placerat accumsan id, varius id quam. Aenean ac est lobortis, eleifend est et, vehicula dui. Praesent tincidunt sagittis tincidunt. Nulla facilisis mi id dui fringilla, et facilisis felis vehicula. Vivamus lorem eros, hendrerit ac ipsum tincidunt, volutpat facilisis eros. Nulla aliquam, justo eget feugiat lacinia, lacus arcu tincidunt odio, venenatis maximus sapien arcu id tortor. Duis bibendum augue diam, sit amet congue augue pulvinar ut. Aliquam erat volutpat. Aenean feugiat tellus lacus, sed laoreet leo vehicula ut. Pellentesque turpis justo, faucibus vel euismod in, sagittis in leo.Vivamus sit amet lobortis nunc, quis faucibus enim. Integer dolor ex, ullamcorper vel leo a, suscipit malesuada dui. Mauris ac leo vel metus tempor egestas. Donec massa nunc, vestibulum sed dui sed, facilisis ullamcorper ligula. Sed vel iaculis justo. Sed efficitur elit et elit ullamcorper, et posuere tortor blandit. Curabitur justo nulla, pulvinar at dolor eget, egestas lobortis quam. Phasellus a aliquet nibh, ut placerat ligula. Vivamus tempus quam ut nisl placerat, at commodo augue interdum. In hac habitasse platea dictumst. Sed eget arcu et est consectetur posuere vel quis velit. Suspendisse sed urna dictum, condimentum lacus quis, ullamcorper lorem. Ut interdum purus vitae arcu ornare facilisis.Nullam accumsan vel nisl nec malesuada. Mauris placerat diam in est dapibus euismod. Integer facilisis tellus imperdiet, suscipit dolor id, egestas neque. Mauris vestibulum enim purus, vel mollis lacus pulvinar et. Quisque nisl est, aliquam et nisl sit amet, ornare auctor tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dignissim ligula ac lectus posuere, quis malesuada ex tincidunt. Nullam nisi nisl, dictum sed auctor in, mollis eget lectus. Etiam sodales quam ut nibh accumsan, non ultrices dui feugiat. Duis quis turpis eu mi consequat lobortis in eget leo. Integer pretium condimentum tellus, et hendrerit eros sagittis ut. Proin a semper nisl, in lobortis lacus. Nam efficitur arcu ac neque convallis accumsan. In hendrerit aliquet metus, nec finibus turpis tempor non.Quisque quis nunc ultrices, egestas dui id, auctor sapien. Vestibulum convallis luctus tristique. Sed scelerisque justo et viverra ultricies. Sed egestas libero vel maximus volutpat. Donec et interdum purus. Aliquam a purus sit amet diam tristique molestie nec nec sapien. Nunc pellentesque urna eu placerat convallis. Ut sodales fringilla imperdiet. Vivamus porta neque quis enim sollicitudin, eu faucibus lacus bibendum. Fusce non nulla luctus, ultrices metus id, rutrum nisi.Phasellus in dolor in elit faucibus rutrum. Phasellus maximus consequat ante, nec tristique nibh posuere eu. Nam ultricies, dui nec fringilla vulputate, sem enim ultrices nisl, id porta neque sapien sed orci. Maecenas mattis ligula metus, ut mattis ante eleifend vitae. Etiam vitae mauris a leo laoreet pharetra et vel ipsum. Ut pulvinar orci eu viverra iaculis. Curabitur eget cursus augue. Fusce condimentum consequat sem quis facilisis. Sed mollis lorem a egestas hendrerit. Proin laoreet ipsum non malesuada pretium. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum commodo mi, eget tempus neque facilisis ac. Etiam pulvinar turpis id mauris rhoncus, auctor luctus eros porttitor. Sed lorem erat, pulvinar ut fringilla sit amet, gravida nec nisi.Nulla a lectus pretium, imperdiet erat id, vulputate felis. Etiam sit amet dignissim lectus, non sodales nulla. Nulla ultricies eleifend dui, non ornare elit convallis id. Aenean commodo eu odio et dapibus. Phasellus accumsan elit at sapien varius faucibus. Maecenas et lectus a nulla molestie ornare ut sed mauris. In hac habitasse platea dictumst. Maecenas pulvinar volutpat placerat. Aliquam posuere, arcu nec tempus efficitur, tortor risus fermentum tortor, nec varius ipsum elit ac quam. Integer congue commodo enim molestie pulvinar. Pellentesque auctor malesuada sem, et hendrerit est porta vitae. Donec vitae vestibulum metus, et volutpat quam. Donec gravida vulputate venenatis. In fringilla orci sit amet tempus luctus. Etiam malesuada ex sit amet faucibus placerat.Fusce semper ultricies ante. Aliquam ac lacus ac mauris sodales viverra. Ut iaculis, odio ac malesuada vehicula, justo enim dapibus turpis, fermentum molestie justo ex eget tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc porttitor, eros quis posuere pulvinar, ipsum nulla pretium ante, vel aliquam leo ex sit amet mauris. Vivamus consectetur, massa in laoreet iaculis, magna massa scelerisque enim, et pulvinar justo sapien eu ipsum. Phasellus ultrices felis purus, sed ultricies massa euismod consectetur. Pellentesque sit amet scelerisque eros, sit amet efficitur augue.Nunc augue nunc, molestie eget convallis quis, volutpat non tellus. Fusce accumsan dapibus ante vel eleifend. Nam vulputate erat sit amet felis porta hendrerit. Maecenas vitae risus placerat, pharetra massa ac, rutrum elit. Sed a ullamcorper justo. Duis lobortis lacus vel metus ultricies, ac tristique purus porta. Sed sit amet sem sed ex efficitur pretium. Sed volutpat ultrices faucibus. Aliquam at tellus vitae metus venenatis facilisis at id augue. Sed viverra libero massa, at semper ipsum convallis ut. Ut malesuada nibh tempus, dignissim urna sit amet, tempus purus. Cras scelerisque purus sem, id tristique tellus placerat eu. In rutrum eget ex ac lobortis. Donec a nulla quis libero tristique malesuada vel in enim.Pellentesque est turpis, auctor eu hendrerit id, aliquam eget dui. Morbi lacus nisl, dictum id eros at, congue vulputate erat. Nullam semper in est in tristique. Donec cursus dui non dignissim molestie. Phasellus vulputate mi non felis mattis aliquet. Aenean ullamcorper tellus consectetur placerat scelerisque. Nam at libero bibendum, porta lorem sit amet, ultricies nunc. Integer maximus aliquet libero eu tincidunt. In ornare eros eget erat porta elementum. Fusce ac libero consequat, varius risus eget, ultricies nibh. Nunc nec justo nec nisl ultrices finibus at non velit. Donec euismod nibh id sem dignissim feugiat.Vivamus a justo id augue dignissim maximus nec eu ipsum. Phasellus quis purus eget arcu laoreet eleifend ac quis dolor. Nam lectus nunc, tristique a porttitor ut, tempor sed dui. Nunc vel leo convallis, congue leo sed, gravida arcu. Suspendisse vel velit fermentum, ultricies velit a, molestie est. Aliquam sem arcu, auctor at dapibus quis, dignissim vel risus. Nulla feugiat congue elit, sit amet fringilla eros semper ullamcorper.Aliquam erat volutpat. Praesent venenatis scelerisque felis, in bibendum sem finibus sit amet. Curabitur sit amet malesuada felis. Integer egestas leo non sem suscipit, ut luctus dolor lacinia. Sed aliquet leo eget scelerisque cursus. Etiam lacus quam, maximus ut dui sed, consectetur placerat nunc. Duis viverra varius erat vestibulum blandit.Cras sit amet ultrices magna. Maecenas vitae elit a lectus dignissim congue ut id nibh. Proin id nisi massa. In euismod arcu ut nisl egestas egestas. Donec hendrerit ligula sem, sed venenatis quam pretium sed. Nullam tempus at dui congue pharetra. Sed condimentum sit amet neque sed vulputate. Aliquam volutpat elementum mi sed sagittis. Integer et turpis sed mi accumsan facilisis in sed augue.Fusce at magna a lacus euismod euismod. Quisque eu dui ultricies, sodales nibh eget, imperdiet felis. Nam hendrerit ultrices diam, non molestie velit tristique vel. Quisque sit amet accumsan felis. Vivamus ac tortor neque. Vestibulum scelerisque dictum ex, vel auctor mi placerat eget. Phasellus sit amet rhoncus magna. Nulla finibus pellentesque facilisis. Aliquam consequat non purus a finibus. Vivamus nunc ante, molestie sed augue at, placerat sodales sapien. Curabitur porta ex cursus iaculis mattis. Suspendisse mauris mauris, feugiat quis risus venenatis, pellentesque pharetra leo. Vivamus a enim rutrum, ullamcorper nulla ac, vestibulum dui.In non varius enim. Vivamus vehicula sapien vel lacus vehicula consectetur ac id libero. Pellentesque consectetur nisl sed sem tincidunt, a aliquam augue dictum. Sed vel justo vel metus commodo dictum ultricies nec libero. Suspendisse quis porttitor nisl. Morbi orci diam, dictum sit amet sollicitudin ac, dictum quis orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam euismod dolor ornare quam malesuada feugiat at nec justo. Vestibulum semper feugiat tortor, non elementum augue aliquam quis. In ac magna porta, mattis tortor eu, ultrices lacus. Nullam tristique lectus metus, non dignissim nisl aliquam id.Proin lobortis at nunc quis varius. Aenean porta pharetra sem at facilisis. Aenean justo augue, semper accumsan erat tristique, pulvinar convallis augue. Nam velit arcu, posuere sed felis condimentum, mattis congue nulla. Cras vehicula sem ut ultricies convallis. Curabitur velit est, maximus vitae facilisis vitae, hendrerit vel diam. Quisque purus nisl, accumsan eu leo nec, sagittis vestibulum lectus. Donec enim ante, vestibulum a consectetur a, ullamcorper vel nisi. Etiam pellentesque, tortor elementum congue ornare, risus arcu scelerisque nisi, sed blandit ante purus at libero. Vivamus risus turpis, elementum sed odio at, posuere condimentum neque. Curabitur fermentum varius mollis. Vivamus volutpat placerat lectus quis dictum. Sed ornare urna nec ornare ullamcorper. Morbi lacinia et neque id egestas.Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam consequat iaculis lectus vel fringilla. Quisque sollicitudin tellus nulla. Pellentesque quam massa, porttitor vitae lectus quis, hendrerit commodo libero. Aenean ultricies sagittis fermentum. Vestibulum ornare consequat orci ut aliquet. Vestibulum fermentum efficitur pretium.Phasellus pretium luctus arcu, a auctor diam rhoncus vehicula. Aliquam molestie bibendum massa, eget sagittis lorem imperdiet non. Phasellus convallis tristique feugiat. Curabitur feugiat ligula vitae eros pharetra, et finibus diam molestie. Sed sapien nisl, laoreet in accumsan in, ultrices eget tortor. Maecenas vestibulum tincidunt semper. Nunc facilisis dolor sit amet luctus posuere. Phasellus malesuada augue arcu, vitae ultricies felis placerat ut. Nunc nec sapien a libero ultrices interdum. Morbi ut laoreet enim. Vestibulum sit amet neque congue, mattis ex vel, maximus mi.Duis efficitur varius venenatis. Fusce rutrum vestibulum lorem, vel lobortis ante. Proin lacus neque, fermentum quis nulla quis, vestibulum feugiat turpis. Praesent dictum rutrum sem sit amet ultrices. Pellentesque nibh diam, faucibus sed dapibus nec, rhoncus in leo. Nam lobortis non libero ac mollis. Nam sed ipsum et eros elementum placerat ac in ligula. Nullam lacinia vitae tellus vel interdum. Sed mattis vitae lectus sit amet consequat. Quisque sagittis massa nec lacus iaculis, sit amet semper magna hendrerit. Quisque eleifend nunc risus, id porta velit ultricies vitae. Vivamus nibh mi, porttitor eu imperdiet nec, rhoncus at velit. Etiam ligula mi, ultrices nec mollis rutrum, mattis id ex. In hac habitasse platea dictumst. Duis nulla tortor, ornare aliquet ex semper, dictum faucibus dui.Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean quis pellentesque mauris. Donec ante eros, eleifend nec placerat et, bibendum in lectus. Vestibulum fringilla dictum consequat. Ut vehicula lorem nunc. Fusce eu dolor accumsan, lacinia quam vel, auctor erat. Donec id magna maximus, semper mauris at, suscipit magna. Aenean nisl neque, imperdiet in tellus quis, tincidunt venenatis turpis. In lectus mi, ultricies eget nibh vel, hendrerit volutpat arcu.Nunc sollicitudin fringilla nibh in viverra. Maecenas at neque purus. Integer ultrices, lorem cursus aliquam tempus, eros velit ornare nisl, non malesuada magna odio ut arcu. In hac habitasse platea dictumst. Praesent sodales malesuada turpis, eget ullamcorper metus gravida ut. Nam at augue sed sem bibendum mollis nec ornare velit. Quisque eu tempor quam, sit amet dignissim massa. Pellentesque elementum in lacus feugiat dictum.Aliquam erat lectus, congue a leo eget, sagittis pellentesque lacus. Integer euismod lacinia tortor a placerat. Nam non hendrerit est, id posuere nisl. Vestibulum fringilla placerat risus vel venenatis. Integer varius dolor non commodo pellentesque. Sed sed est ipsum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean euismod neque eu massa tincidunt, maximus pulvinar magna vehicula. Donec orci odio, mollis et dolor at, eleifend volutpat purus. Vestibulum sodales consequat sapien, nec viverra ligula molestie id. Suspendisse aliquam blandit lectus, non vestibulum urna tempor eu. Maecenas sed diam in odio rutrum condimentum vel eu risus. Curabitur lacus mi, sollicitudin ut commodo sed, vulputate id ligula. Curabitur at mi nisl. Sed vitae enim molestie, laoreet diam eu, facilisis ipsum.In pulvinar odio et metus volutpat, ut condimentum dui gravida. Nullam tristique dignissim metus, tempor varius mi vestibulum sed. Proin interdum laoreet condimentum. Etiam ut porta eros. Nullam in tempus magna. Aenean ac cursus metus, non sodales enim. Ut sollicitudin orci sapien, a venenatis risus dignissim quis. Pellentesque vestibulum lorem ut consectetur interdum. Nunc nunc turpis, blandit ac dapibus eu, vestibulum faucibus quam. Nulla facilisi. Etiam venenatis elit tortor, mattis tincidunt risus egestas sed. Suspendisse pharetra eros quis odio porta imperdiet. Aenean id tellus mi. Vivamus commodo aliquam facilisis.Vivamus condimentum, dolor eu aliquam faucibus, urna enim dapibus purus, et faucibus sapien metus eu lectus. Nulla varius eu augue sit amet feugiat. Vivamus bibendum in sapien vestibulum eleifend. Morbi sed mattis nisl. Aenean porta magna sit amet lacus porta feugiat. Aliquam metus lectus, volutpat eget accumsan at, gravida sit amet erat. Sed gravida eros justo, eget venenatis urna ullamcorper sed. Mauris pellentesque vehicula nibh. Proin at ante quis ligula vestibulum malesuada. Pellentesque feugiat ut nisl sit amet elementum. Mauris ipsum tellus, placerat eget finibus nec, ultricies eu risus.Vestibulum rhoncus, massa at pellentesque mollis, ligula est rhoncus magna, interdum sodales arcu mi quis felis. Morbi eget orci non ipsum luctus molestie. Nam at suscipit nunc, a tristique leo. Vivamus a bibendum mi, eget porttitor nibh. Mauris dictum purus consectetur, scelerisque est nec, cursus metus. Praesent vestibulum risus sapien, sit amet iaculis est ultrices nec. Integer vel faucibus est. Donec vel risus a orci ultricies iaculis.Cras maximus ante varius turpis feugiat, id pretium lectus commodo. Sed lacinia tellus libero, ut ultricies sem gravida eget. Praesent ut nibh eget sapien rutrum auctor. Vivamus scelerisque tortor sed orci facilisis, vel vestibulum ligula porttitor. Nam nec vehicula ante, sit amet tristique odio. Nunc et turpis tellus. Maecenas commodo tellus sed dolor lobortis sagittis ac eu odio. Ut vestibulum pellentesque nulla in accumsan.Sed enim mi, lobortis sit amet nunc vitae, sodales dignissim dui. Nunc sit amet sagittis eros, sed interdum risus. Pellentesque sagittis nulla eu justo dictum, ut tincidunt urna euismod. In rutrum nisi id purus pretium, nec pretium mauris euismod. Vestibulum tempor magna et nisl porta, eget commodo libero mollis. Integer nec purus vel ipsum consequat tincidunt quis eget risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ornare augue quis ante imperdiet, in efficitur tellus aliquet. Maecenas facilisis bibendum erat, ac gravida ligula pellentesque rhoncus. Etiam lacinia dolor dolor, vel cursus nisl congue ut. Sed fermentum lorem porttitor risus posuere, vitae ornare tellus pharetra. Vivamus ligula diam, feugiat in orci consequat, vehicula iaculis nisl. In sollicitudin gravida lectus vitae fringilla. Etiam aliquet, orci non mollis aliquet, nunc erat mollis sapien, nec sollicitudin lorem arcu ac ipsum. Mauris neque leo, commodo ut ullamcorper at, pharetra et urna. Sed quis sollicitudin tortor.Aliquam ullamcorper, eros non lobortis molestie, mi augue mollis diam, ut ultrices ligula velit et turpis. Praesent lacus ipsum, congue a metus at, porta feugiat libero. Sed at blandit eros. Nulla facilisi. Etiam urna nulla, blandit in porttitor et, imperdiet id velit. Etiam fermentum mi quis turpis feugiat aliquet. Vestibulum vel ultrices tellus. Morbi tincidunt ut erat et tristique. Donec arcu quam, egestas et rhoncus rhoncus, pellentesque in urna. Nunc volutpat nibh arcu, sit amet faucibus felis dapibus vel. Donec interdum pretium mauris non tincidunt.Mauris congue ante vel velit auctor consectetur. Phasellus lectus mi, ultricies in ullamcorper in, dictum nec felis. Cras nec sapien at dui accumsan elementum in sed quam. Mauris pulvinar turpis iaculis, lacinia magna at, vehicula erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis fermentum finibus purus id tempor. Cras iaculis tellus vel facilisis semper. Vivamus et velit tellus.Sed mattis euismod arcu, at interdum lorem. Aliquam varius nibh id eros commodo interdum. Quisque sed enim in nisi sagittis suscipit sed ut tortor. Cras egestas erat tortor, et scelerisque ante luctus ac. Phasellus libero risus, pellentesque id bibendum vehicula, ornare sit amet tellus. Duis eros lorem, vulputate eu ultricies venenatis, luctus vel dolor. Etiam vestibulum tempus elit, eu dictum mi eleifend ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at risus vitae mi dictum dignissim nec eget lectus. Proin luctus mauris et felis bibendum, nec dignissim neque iaculis. Mauris dapibus tincidunt nunc.Maecenas nec neque elementum, accumsan lacus sit amet, dapibus dolor. Proin sed fermentum augue, vitae tincidunt nisl. In hac habitasse platea dictumst. Ut in urna ac augue tempor interdum ut quis tellus. Mauris placerat elementum tortor, et scelerisque dui aliquet eget. Cras non porta libero. Cras posuere in dui sed luctus. Donec pulvinar quam ac tortor mollis varius. Proin nec cursus erat. Sed aliquam dolor porta maximus facilisis. Morbi at convallis massa. Sed malesuada placerat mauris a auctor. Sed aliquet interdum justo tempus viverra. Vivamus tempus blandit convallis.Curabitur ligula leo, placerat ut quam nec, pharetra laoreet enim. Mauris quis nulla justo. Suspendisse malesuada tellus libero, id imperdiet turpis pretium id. Praesent aliquet odio vitae imperdiet cursus. Nunc rhoncus, quam at euismod feugiat, purus nunc fermentum nisl, eget efficitur felis mi sit amet nibh. Donec feugiat elementum consequat. Aliquam sollicitudin convallis suscipit. Quisque vitae tellus fermentum, faucibus erat eleifend, semper velit. Nam porttitor ex ac erat euismod ultrices. Aliquam lorem dui, pulvinar sit amet elementum hendrerit, vehicula a nibh. Ut at accumsan turpis.Pellentesque dictum felis consequat hendrerit tincidunt. Sed ullamcorper pellentesque risus at pharetra. Fusce nec dolor id magna facilisis facilisis quis mattis nulla. Suspendisse in dictum lacus, ac pulvinar ligula. Proin placerat mi quis tempor pellentesque. Suspendisse vitae nunc rhoncus, ultrices tortor sit amet, convallis nisi. Cras molestie sit amet metus condimentum gravida. Quisque venenatis, magna ut vestibulum molestie, magna lorem bibendum est, a accumsan lectus sapien nec metus. Pellentesque at massa finibus nibh bibendum feugiat. Sed sed mattis risus.Fusce tempor, ante vitae vehicula eleifend, ante lorem tincidunt erat, vel pulvinar mauris est eleifend quam. Vivamus placerat eu neque eu blandit. Fusce et odio placerat, malesuada tortor at, lobortis lorem. Nunc tincidunt imperdiet nisl auctor sodales. Aenean in lobortis dolor, et molestie nunc. Aliquam placerat lacus lectus, sed semper odio luctus vel. Suspendisse a sodales eros, et dictum tellus. Vestibulum elementum molestie turpis, sit amet tincidunt nisi rhoncus vitae. Sed placerat vestibulum orci. Sed ut eros quis odio rhoncus molestie id in sapien. Integer ut aliquam neque. Praesent ligula magna, posuere vitae eros et, commodo fermentum justo.Cras condimentum imperdiet est, vitae egestas metus luctus id. Etiam et leo ex. Donec posuere ultrices sem in mattis. Sed vel iaculis tortor. Mauris mauris lacus, ornare sit amet lacus in, fringilla ultricies neque. Etiam scelerisque et sapien in tempus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nibh mauris, vestibulum ut urna eget, mattis porttitor neque. Aenean quis turpis ipsum. Sed euismod velit sit amet scelerisque egestas. Nam ac gravida mi.Maecenas condimentum tortor in molestie ullamcorper. Nullam ac imperdiet urna. Donec ut dictum mauris, ut eleifend dolor. Mauris congue vulputate gravida. Proin pulvinar arcu velit, mattis viverra mauris vehicula in. Etiam volutpat nec nisi vel euismod. Mauris ex eros, euismod in magna quis, tempus facilisis risus. Maecenas felis massa, placerat eu viverra ut, ornare quis arcu. Duis ac viverra velit, vitae lobortis mauris. Quisque ac ultricies turpis, vitae placerat magna. Cras cursus, ante in auctor elementum, nisl arcu convallis est, vel fermentum orci nisi a ante.Suspendisse cursus aliquet lorem eget facilisis. Sed nunc augue, tempor et dignissim eu, interdum sed justo. Quisque iaculis magna lorem, quis pharetra ex vehicula vel. In bibendum vestibulum lectus at sollicitudin. Praesent non sagittis nulla. Ut fringilla, lorem sit amet pharetra efficitur, mi nibh fermentum dui, id efficitur nisl augue ultricies felis. Mauris at lectus nec lectus congue pharetra et in magna. Praesent mauris mauris, molestie id diam quis, volutpat lobortis ligula.Suspendisse rutrum, metus ac rutrum volutpat, lacus mauris luctus lectus, ullamcorper dictum massa ante sit amet libero. In vulputate efficitur metus, quis consequat lectus tincidunt ac. Sed finibus mollis velit, vel venenatis urna euismod et. Praesent in vehicula nunc, in posuere dolor. Vestibulum consectetur iaculis eros at tristique. In convallis consequat rhoncus. Nunc euismod mi nec odio rutrum pretium. Donec gravida urna vitae sapien porta sollicitudin. Aliquam eget eros ex. Duis eget placerat urna. Pellentesque vitae luctus sem. Fusce risus augue, tincidunt in quam vel, malesuada consequat mi. Nam nunc dolor, sagittis a felis eget, eleifend semper arcu. Mauris augue ipsum, sagittis quis tristique sit amet, ornare a urna. Proin tristique tortor sit amet augue lobortis efficitur.Aliquam vitae risus ultrices erat maximus laoreet. Phasellus vel elit ac velit luctus placerat. Mauris lectus lectus, maximus eu efficitur at, laoreet eu mauris. Sed pharetra nisi vitae lorem tempus porta. Integer eleifend aliquam ligula ut ultrices. Suspendisse vel purus at eros tempus auctor. Ut eget justo a nisi aliquam tristique. Vestibulum imperdiet vestibulum posuere. In hac habitasse platea dictumst. Phasellus porttitor enim libero, eu ultrices diam aliquam id. Duis eu leo vitae nisl consequat aliquam. Maecenas quis urna commodo, commodo enim vel, consectetur libero. Vestibulum quis massa in dolor fermentum malesuada. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur tincidunt dui et est gravida aliquet.Suspendisse a aliquam velit, eu rhoncus lacus. Ut a arcu semper, facilisis enim pellentesque, convallis lacus. Aliquam felis massa, placerat ut ante quis, venenatis fringilla lacus. In faucibus purus nec sapien consectetur facilisis non vitae nulla. Nunc tincidunt lectus turpis, quis varius turpis finibus venenatis. Nam in odio et nibh lacinia elementum ut non sem. Donec cursus nec metus in volutpat.Donec felis nisi, accumsan ut placerat et, mollis a ex. Sed dolor nunc, ullamcorper ut nibh non, aliquet sollicitudin ex. Vivamus ac ornare ligula. Curabitur pellentesque id erat ac iaculis. Sed interdum nunc vitae tempor laoreet. Pellentesque non diam condimentum, condimentum dui vitae, maximus metus. Mauris a pretium libero, eu consequat lectus.Vestibulum aliquam odio at elit posuere mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean a lorem vitae nisi tincidunt rhoncus. Fusce blandit volutpat est, eget congue erat bibendum nec. Sed ullamcorper tellus in quam placerat tincidunt. Nulla quis erat vitae neque ullamcorper commodo. Fusce varius mi eleifend accumsan scelerisque. Nunc maximus orci eget molestie tempus. Praesent vehicula neque vel orci scelerisque laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur quis lacinia turpis, a volutpat dui. Nulla ultricies ex felis, non placerat tortor lobortis at. Praesent interdum sem sit amet purus vulputate ultricies.Maecenas euismod magna vel vulputate pharetra. Fusce porttitor magna vel venenatis vulputate. Vestibulum lacinia libero aliquet ex scelerisque, quis euismod nibh iaculis. Nullam commodo risus ac ultricies sodales. Proin mattis lorem vitae metus vestibulum iaculis. Integer justo diam, fringilla eu purus vel, lacinia aliquam ligula. Aenean vel mollis magna, ut auctor metus. Aenean eu molestie erat, vel aliquam libero. Mauris non dui porta, lacinia lorem cursus, ultricies dui. Nunc pretium commodo porttitor. Aliquam fermentum augue nec mattis gravida.Duis odio nunc, ullamcorper faucibus justo a, viverra bibendum augue. Donec pretium euismod leo non consequat. Nunc semper elit ut massa consectetur, luctus pulvinar enim convallis. Sed iaculis scelerisque lacinia. Pellentesque condimentum diam luctus pharetra accumsan. Fusce vel lorem congue, lacinia orci eu, posuere enim. Nunc volutpat gravida eros ac dignissim. Proin tristique, velit ut posuere auctor, erat eros vestibulum nibh, interdum egestas turpis ligula tincidunt felis. Pellentesque scelerisque est justo, non bibendum lectus sollicitudin quis. Sed rhoncus sem ut nisi accumsan, ac semper erat ultrices. Ut consequat sit amet diam non maximus. Praesent egestas, leo in cursus pretium, odio lorem tempor velit, at auctor risus odio quis elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Sed ut cursus lectus. Pellentesque malesuada, mauris ac lobortis tempor, urna nisi imperdiet nisi, ut accumsan enim elit vitae quam. Aenean convallis facilisis auctor. Aliquam sit amet lacinia velit. Fusce congue porta ex in elementum. Nam neque eros, auctor in gravida at, fermentum non lectus. Donec quis arcu tortor. Quisque id blandit quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In faucibus risus in libero mollis, vel fringilla purus faucibus. Aenean congue ex non elit sagittis hendrerit quis at mauris.Donec eleifend est vitae arcu vestibulum, eget interdum enim ultrices. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus ac tristique nulla. Donec rutrum urna nec fringilla rutrum. Etiam non pulvinar ligula. Suspendisse rutrum accumsan pretium. Aliquam lacus est, gravida et massa ac, laoreet aliquet tellus. Proin efficitur nisl non condimentum vulputate. Etiam maximus augue non ex commodo, sed congue velit vestibulum.Nulla nec interdum mauris. Maecenas dignissim erat lacus, venenatis semper augue euismod eu. Sed nunc dolor, sollicitudin quis feugiat a, sollicitudin sit amet nibh. Fusce nec diam scelerisque, scelerisque ante eu, semper mauris. Cras ultricies mauris non nulla rhoncus ullamcorper. Mauris at elementum lectus. Etiam a nunc eget arcu lobortis convallis. In hac habitasse platea dictumst. Sed volutpat ornare malesuada. Quisque enim enim, sollicitudin et facilisis ut, fringilla eget metus. Sed non neque et massa congue faucibus eget vitae felis. Duis vitae euismod nisi. Donec porta nisi nisi, vitae volutpat augue cursus quis. Pellentesque varius lectus id lorem maximus faucibus. Quisque accumsan sapien arcu, eu ultrices nisi scelerisque vel.In ac posuere risus, ac euismod velit. Quisque rhoncus vehicula tortor quis congue. Donec dolor velit, aliquet a tempor at, imperdiet viverra sem. Phasellus ut erat non felis vehicula tempus consequat ut nunc. Vivamus interdum, dolor a facilisis semper, lorem nisl fringilla lacus, a fermentum odio leo eget enim. Cras luctus facilisis ligula id accumsan. Suspendisse gravida nibh arcu, non pretium dolor dignissim quis. Aliquam ante lacus, iaculis eget nulla eget, porta elementum mi. Fusce diam metus, ornare ac dapibus semper, ultrices vel urna. Sed ex nisi, posuere vel eleifend ut, congue vel magna. Pellentesque porttitor, leo ac ullamcorper feugiat, massa risus elementum lacus, non lacinia diam velit in urna. Fusce vel sapien ipsum. Duis convallis hendrerit posuere. Praesent lacinia, odio eget semper pulvinar, arcu nulla rhoncus lacus, ut auctor arcu ipsum quis magna. Maecenas a ipsum eget ante iaculis ornare. Duis faucibus et ipsum eget suscipit.Pellentesque tristique mattis nibh gravida aliquet. Proin leo risus, semper id dapibus nec, mollis sed elit. Suspendisse lacinia volutpat diam, et elementum orci bibendum sed. Duis molestie urna quis magna imperdiet, ut porta libero viverra. Vestibulum interdum, elit vel bibendum facilisis, mauris nisl convallis velit, sed facilisis tellus ex eget tortor. Sed venenatis orci a nulla iaculis, at ultricies enim vulputate. Maecenas ac est et nunc varius consectetur at eget justo. Duis nec tellus quis nisi scelerisque sagittis id eu mi. Proin suscipit, dui vitae viverra tempus, lectus magna interdum felis, at interdum nisi justo ac turpis. Nullam urna justo, consequat quis varius sed, facilisis at purus. Etiam non sodales neque. Pellentesque sit amet tempus enim. Sed suscipit, justo sed maximus scelerisque, lacus erat imperdiet nunc, a pellentesque metus elit eget arcu. Maecenas eget nibh laoreet ex congue convallis eu nec felis."

    // MARK: - Base16
    /*
     * Base16 Test Vectors defined By RFC 4648
     * BASE16("") = ""
     * BASE16("f") = "66"
     * BASE16("fo") = "666F"
     * BASE16("foo") = "666F6F"
     * BASE16("foob") = "666F6F62"
     * BASE16("fooba") = "666F6F6261"
     * BASE16("foobar") = "666F6F626172"
     */
    func test_base16Encoding() {
        XCTAssertEqual(encodeToBase16(""), "")
        XCTAssertEqual(encodeToBase16("f"), "66")
        XCTAssertEqual(encodeToBase16("fo"), "666F")
        XCTAssertEqual(encodeToBase16("foo"), "666F6F")
        XCTAssertEqual(encodeToBase16("foob"), "666F6F62")
        XCTAssertEqual(encodeToBase16("fooba"), "666F6F6261")
        XCTAssertEqual(encodeToBase16("foobar"), "666F6F626172")
    }

    func test_base16Decoding() {
        XCTAssertEqual(decodeFromBase16(""), "")
        XCTAssertEqual(decodeFromBase16("66"), "f")
        XCTAssertEqual(decodeFromBase16("666F"), "fo")
        XCTAssertEqual(decodeFromBase16("666F6F"), "foo")
        XCTAssertEqual(decodeFromBase16("666F6F62"), "foob")
        XCTAssertEqual(decodeFromBase16("666F6F6261"), "fooba")
        XCTAssertEqual(decodeFromBase16("666F6F626172"), "foobar")
    }

    // MARK: - Valiation
    func test_isInputValid_wrongAlphabet_base16Decoding() {
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("G"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("H"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("I"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("g"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("h"))
        XCTAssertFalse(SwiftyTextEncoding.isBase16StringValid("i"))
    }

    // MARK: - Base32
    /*
     * Base32 Test Vectors defined By RFC 4648
     * BASE32("") = ""
     * BASE32("f") = "MY======"
     * BASE32("fo") = "MZXQ===="
     * BASE32("foo") = "MZXW6==="
     * BASE32("foob") = "MZXW6YQ="
     * BASE32("fooba") = "MZXW6YTB"
     * BASE32("foobar") = "MZXW6YTBOI======"
     */
    func test_base32Encoding_base32Alphabet() {
        XCTAssertEqual(encodeToBase32("", alphabet: .base32), "")
        XCTAssertEqual(encodeToBase32("f", alphabet: .base32), "MY======")
        XCTAssertEqual(encodeToBase32("fo", alphabet: .base32), "MZXQ====")
        XCTAssertEqual(encodeToBase32("foo", alphabet: .base32), "MZXW6===")
        XCTAssertEqual(encodeToBase32("foob", alphabet: .base32), "MZXW6YQ=")
        XCTAssertEqual(encodeToBase32("fooba", alphabet: .base32), "MZXW6YTB")
        XCTAssertEqual(encodeToBase32("foobar", alphabet: .base32), "MZXW6YTBOI======")
    }

    func test_base32Encoding_extendedHexBase32Alphabet() {
        XCTAssertEqual(encodeToBase32("", alphabet: .extendedHexBase32), "")
        XCTAssertEqual(encodeToBase32("f", alphabet: .extendedHexBase32), "CO======")
        XCTAssertEqual(encodeToBase32("fo", alphabet: .extendedHexBase32), "CPNG====")
        XCTAssertEqual(encodeToBase32("foo", alphabet: .extendedHexBase32), "CPNMU===")
        XCTAssertEqual(encodeToBase32("foob", alphabet: .extendedHexBase32), "CPNMUOG=")
        XCTAssertEqual(encodeToBase32("fooba", alphabet: .extendedHexBase32), "CPNMUOJ1")
        XCTAssertEqual(encodeToBase32("foobar", alphabet: .extendedHexBase32), "CPNMUOJ1E8======")
    }

    func test_base32Encoding_zBase32Alphabet() {
        XCTAssertEqual(encodeToBase32("", alphabet: .zBase32), "")
        XCTAssertEqual(encodeToBase32("f", alphabet: .zBase32), "ca======")
        XCTAssertEqual(encodeToBase32("fo", alphabet: .zBase32), "c3zo====")
        XCTAssertEqual(encodeToBase32("foo", alphabet: .zBase32), "c3zs6===")
        XCTAssertEqual(encodeToBase32("foob", alphabet: .zBase32), "c3zs6ao=")
        XCTAssertEqual(encodeToBase32("fooba", alphabet: .zBase32), "c3zs6aub")
        XCTAssertEqual(encodeToBase32("foobar", alphabet: .zBase32), "c3zs6aubqe======")
    }

    func test_base32Decoding_base32Alphabet_withPadding() {
        XCTAssertEqual(decodeFromBase32("", alphabet: .base32), "")
        XCTAssertEqual(decodeFromBase32("MY======", alphabet: .base32), "f")
        XCTAssertEqual(decodeFromBase32("MZXQ====", alphabet: .base32), "fo")
        XCTAssertEqual(decodeFromBase32("MZXW6===", alphabet: .base32), "foo")
        XCTAssertEqual(decodeFromBase32("MZXW6YQ=", alphabet: .base32), "foob")
        XCTAssertEqual(decodeFromBase32("MZXW6YTB", alphabet: .base32), "fooba")
        XCTAssertEqual(decodeFromBase32("MZXW6YTBOI======", alphabet: .base32), "foobar")
    }

    func test_base32Decoding_base32Alphabet_noPadding() {
        XCTAssertEqual(decodeFromBase32("", alphabet: .base32), "")
        XCTAssertEqual(decodeFromBase32("MY", alphabet: .base32), "f")
        XCTAssertEqual(decodeFromBase32("MZXQ", alphabet: .base32), "fo")
        XCTAssertEqual(decodeFromBase32("MZXW6", alphabet: .base32), "foo")
        XCTAssertEqual(decodeFromBase32("MZXW6YQ", alphabet: .base32), "foob")
        XCTAssertEqual(decodeFromBase32("MZXW6YTB", alphabet: .base32), "fooba")
        XCTAssertEqual(decodeFromBase32("MZXW6YTBOI", alphabet: .base32), "foobar")
    }

    func test_base32Decoding_extendedHexBase32Alphabet_withPadding() {
        XCTAssertEqual(decodeFromBase32("", alphabet: .extendedHexBase32), "")
        XCTAssertEqual(decodeFromBase32("CO======", alphabet: .extendedHexBase32), "f")
        XCTAssertEqual(decodeFromBase32("CPNG====", alphabet: .extendedHexBase32), "fo")
        XCTAssertEqual(decodeFromBase32("CPNMU===", alphabet: .extendedHexBase32), "foo")
        XCTAssertEqual(decodeFromBase32("CPNMUOG=", alphabet: .extendedHexBase32), "foob")
        XCTAssertEqual(decodeFromBase32("CPNMUOJ1", alphabet: .extendedHexBase32), "fooba")
        XCTAssertEqual(decodeFromBase32("CPNMUOJ1E8======", alphabet: .extendedHexBase32), "foobar")
    }

    func test_base32Decoding_extendedHexBase32Alphabet_noPadding() {
        XCTAssertEqual(decodeFromBase32("", alphabet: .extendedHexBase32), "")
        XCTAssertEqual(decodeFromBase32("CO", alphabet: .extendedHexBase32), "f")
        XCTAssertEqual(decodeFromBase32("CPNG", alphabet: .extendedHexBase32), "fo")
        XCTAssertEqual(decodeFromBase32("CPNMU", alphabet: .extendedHexBase32), "foo")
        XCTAssertEqual(decodeFromBase32("CPNMUOG", alphabet: .extendedHexBase32), "foob")
        XCTAssertEqual(decodeFromBase32("CPNMUOJ1", alphabet: .extendedHexBase32), "fooba")
        XCTAssertEqual(decodeFromBase32("CPNMUOJ1E8", alphabet: .extendedHexBase32), "foobar")
    }

    func test_base32Decoding_zBase32Alphabet_withPadding() {
        XCTAssertEqual(decodeFromBase32("", alphabet: .zBase32), "")
        XCTAssertEqual(decodeFromBase32("ca======", alphabet: .zBase32), "f")
        XCTAssertEqual(decodeFromBase32("c3zo====", alphabet: .zBase32), "fo")
        XCTAssertEqual(decodeFromBase32("c3zs6===", alphabet: .zBase32), "foo")
        XCTAssertEqual(decodeFromBase32("c3zs6ao=", alphabet: .zBase32), "foob")
        XCTAssertEqual(decodeFromBase32("c3zs6aub", alphabet: .zBase32), "fooba")
        XCTAssertEqual(decodeFromBase32("c3zs6aubqe======", alphabet: .zBase32), "foobar")
    }

    func test_base32Decoding_zBase32Alphabet_noPadding() {
        XCTAssertEqual(decodeFromBase32("", alphabet: .zBase32), "")
        XCTAssertEqual(decodeFromBase32("ca", alphabet: .zBase32), "f")
        XCTAssertEqual(decodeFromBase32("c3zo", alphabet: .zBase32), "fo")
        XCTAssertEqual(decodeFromBase32("c3zs6", alphabet: .zBase32), "foo")
        XCTAssertEqual(decodeFromBase32("c3zs6ao", alphabet: .zBase32), "foob")
        XCTAssertEqual(decodeFromBase32("c3zs6aub", alphabet: .zBase32), "fooba")
        XCTAssertEqual(decodeFromBase32("c3zs6aubqe", alphabet: .zBase32), "foobar")
    }

    // MARK: - Valiation
    func test_isInputValid_wrongAlphabet_base32Decoding_base32Alphabet() {
        XCTAssertFalse(isStringValid("0A======", alphabet: .base32))
        XCTAssertFalse(isStringValid("1A======", alphabet: .base32))
        XCTAssertFalse(isStringValid("8A======", alphabet: .base32))
        XCTAssertFalse(isStringValid("9A======", alphabet: .base32))
    }

    func test_isInputValid_wrongPadding_base32Decoding_base32Alphabet() {
        XCTAssertTrue(isStringValid("AA======", alphabet: .base32))
        XCTAssertTrue(isStringValid("AAAA====", alphabet: .base32))
        XCTAssertTrue(isStringValid("AAAAA===", alphabet: .base32))
        XCTAssertTrue(isStringValid("AAAAAAA=", alphabet: .base32))

        XCTAssertFalse(isStringValid("A======", alphabet: .base32))
        XCTAssertFalse(isStringValid("AAA====", alphabet: .base32))
        XCTAssertFalse(isStringValid("AAAAAA=", alphabet: .base32))
    }

    func test_isInputValid_wrongAlphabet_base32Decoding_extendedHexBase32Alphabet() {
        XCTAssertFalse(isStringValid("WA======", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("XA======", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("YA======", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("ZA======", alphabet: .extendedHexBase32))
    }

    func test_isInputValid_wrongPadding_base32Decoding_extendedHexBase32Alphabet() {
        XCTAssertTrue(isStringValid("AA======", alphabet: .extendedHexBase32))
        XCTAssertTrue(isStringValid("AAAA====", alphabet: .extendedHexBase32))
        XCTAssertTrue(isStringValid("AAAAA===", alphabet: .extendedHexBase32))
        XCTAssertTrue(isStringValid("AAAAAAA=", alphabet: .extendedHexBase32))

        XCTAssertFalse(isStringValid("A======", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("AAA====", alphabet: .extendedHexBase32))
        XCTAssertFalse(isStringValid("AAAAAA=", alphabet: .extendedHexBase32))
    }

    func test_isInputValid_wrongAlphabet_base32Decoding_zBase32Alphabet() {
        XCTAssertFalse(isStringValid("la======", alphabet: .zBase32))
        XCTAssertFalse(isStringValid("va======", alphabet: .zBase32))
        XCTAssertFalse(isStringValid("2a======", alphabet: .zBase32))
    }

    func test_isInputValid_wrongPadding_base32Decoding_zBase32Alphabet() {
        XCTAssertTrue(isStringValid("aa======", alphabet: .zBase32))
        XCTAssertTrue(isStringValid("aaaa====", alphabet: .zBase32))
        XCTAssertTrue(isStringValid("aaaaa===", alphabet: .zBase32))
        XCTAssertTrue(isStringValid("aaaaaaa=", alphabet: .zBase32))

        XCTAssertFalse(isStringValid("a======", alphabet: .zBase32))
        XCTAssertFalse(isStringValid("aaa====", alphabet: .zBase32))
        XCTAssertFalse(isStringValid("aaaaaa=", alphabet: .zBase32))
    }

    // MARK: - Performance
    func test_performance_base16Encoding() {
        measure() {
            _ = encodeToBase16(text)
        }
    }

    func test_performance_base32Encoding() {
        measure() {
            _ = encodeToBase32(text, alphabet: .base32)
        }
    }

    func test_performance_base32HexEncoding() {
        measure() {
            _ = encodeToBase32(text, alphabet: .extendedHexBase32)
        }
    }

    func test_performance_base32ZEncoding() {
        measure() {
            _ = encodeToBase32(text, alphabet: .zBase32)
        }
    }
}
