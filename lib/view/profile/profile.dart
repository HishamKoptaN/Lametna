import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'editPersonalProfile.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 204, 204),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Color(0xFFF1F1F1),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: ListView(
                        shrinkWrap: true,
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
              // خلفية الشاشة
              Image.network(
                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBIREhISERYSEhISGBISEhgSGBISGBgSGBgZGRgYGBgcIy4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTQBDAwMEA8QHhISHjQrJCs2MTY0NDQxNTQ0NjQxNDQ0MTQ0NTE0NjQ0NDQ0NDQ0NDQ0NDQ9MTQ0NDExNDQ0NDQ0NP/AABEIARMAtwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAAAQIDBAUGB//EADkQAAICAQMCBAQFAgUDBQAAAAECABEDBBIhBTETQVFhBhQicTKBkaGxQlIjYsHR8JLh8QcVM1Ny/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QAKBEAAgIBBAICAQQDAAAAAAAAAAECERIDITFBE1EiYaEEcYGxIzLR/9oADAMBAAIRAxEAPwDyeLFqFTpMRsIsIAkIQigJCLCKAkIQigJUKiwigJUKhCRQEqFRYRQEqFRYSQNqAA9IsJFEjlaTplqVooMgF9XBiykrVCTZA6oR1RKlwNgRFqJUECVCLUKkASFRahUkDYR1QqQBsSOqFQBsI6oVAG1COiVAGwjqhAGwi1CRRI2FR0IoDYRSIRQLNRKij9IVL0QNqJUfUSooDahUdUSooCVEqOqFRQG1Co6oVFAZUKj6iVFAbUKjqiVFASoRaiVFASEWoVIoCRKjqhUAbUKjqhAGwiwkAs1Co6olTSiBtQqOqFRQGVCo+oVIoDKhUdUKigMqFR9QqKAyolR9QqAMqJUfUKigMqJUfUKgkZUKj6iVIoDKhUdUWooDKiVH1CooDKhHVCKBbqJUkqFTSipHUSpJUKigR1EqSVEqKAyoVH1EqKA2olR9QqKFjKhUfUSooWNqFR1QqKAyoVHVCpFAbUSo+olRQGVCo+oVIokjqFR9QqKAyoR9QigW9sKku2FTSilkNQqS7Ym2KIsjqG2SbYlRRNkdQ2ySoVFEWRbYbZJthtiibI9sNsk2w2xQsi2w2yXbDbFCyLbEqS7YbYoWQ1CpLtibYoWRVAiS7Ym2RRNkVQqSbYbYoWRVFjyIRQL1RNssbIm2bYlLINsNsn2w2yKFlfbF2ybbDbGIsh2xNsn2w2ycSLINsNsn2w2xiTZDthtk22G2RiLINsTbJ9kTbGIsh2xCsm2w2xiLINsTbJ9kSoomyCoVJykTbIxFkG2G2TbYbYxFlcrFkpSEYizT8OJ4ct7IeHN6Msip4cPDlrw4eHIoZFTw4vhy14cPDihkVfDieHLfhxPDk0Mir4cPDlrw4nhxQyK22G2WfDh4cihkVdsTZLfhxPDihkVCkNst+HE8OKGRUKRPDlzw4044oWVPDieHLfhwOOKGRT2RNkuHHG+HGJORVKQlo44SMRZrnDDwppfLw8Ca0Y5Gb4UPCml4EPl4oWZvhQ8KaXy8Pl4oWZnhQ8Kafy8Pl4oZGZ4UPCmn8vD5eKFmZ4UQ4pqfLxPl4oWZngw8Gafy8Pl4oWZnhQ8KaXy8PAihZmeFG+DNP5eBwRQszPCjTimmcEQ4JFCzLOKIcU0/AifLxQszTihNE4IRQyOk+Wh8tNkaaL8tMXqojFmL8tD5abfy0Plo8qJxZi/LQ+Wm18tD5aPKMWYvy0Plpt/LQ+WjyjFmJ8tD5abfy0Plo8oxZh/LQ+Wm38tEOnjyoYsxflony02vAETwhHlGLMX5WJ8rNrwhG+AJPlGLMX5WHys2vAEPlxI8oxZhnSxPlptnTRDpY8qGLMP5WIdNNw6aNOmjyoYswzpYTaOlhJ8qGLNhMqfb84o1KHsP3H+8wk1aH8Rc/egP1Aj8mrx8EBV4895sfaeQ3K+z08Y/RsNqlH9P8f7xh16j+n9pjDOh4DDnz5Y/p/2jTmVeBk221k1Z+w5oSy+yGl1RsjqA/t/iO+f9E/YTn8mbZwruPWwvb7+ksDqKtQZztHZVodrPc+9SzXaRCrg1j1Gu6AfkI3/3If2j9JnDW47PND2B/Pk/84kidUxgDjb+Z8vYDiVv6ZOP2jVfOyqHdUxoRak0Sb7cASJtcGKrjbG5I9COauuf9Zlv1nGwpnPcdlY8edWZWTqOAEMBkLG93YE+9g/eIqXaYePTRpr1Rm4GwnuQKJH39Ih12T0H/TMtdbgJP0ZDfqx5/LcYuLqWLGCB4guxxt7H7zV/SM0vbNA65/YflGnVv6/tM19XgN/Vlu/Oj+0kw63Gm76STxRKbyOPfgevaS9lwRvfJeGqbtyT5UI99Uy8ENdA/ke0oDL3NZfq5J2d7571x+UnTAWO7bk49Vr9blXS5LJPom8bJt3EEC6BINXzxfr2k2YtjGNnYBXBPY2a54UfpG5sLlADsC7g31Wosg8ccfpzJMWHVgUmPHQ43VVA/wBpJ/OZvU9UXWmuxdGxcMzN9CkAnsORxyfy/WLpNXjJtmQkNtI3AXXJILUD+sgz48jIiOAFUFSEJA9wSRUx8mlBb6SwDXf1hf8AT3iPyu3QaxqlZsa7rao5CbSLJsAg+hBuRprHYAq3Jqgtgkk+QmS2k2n8V9r3EN78WO0XGzqylNu5aI5LcD1HpNKio1H8lPk5bmpqspR1xnflYiyFZFANXV/r+kJnZFyNbECyb4vsfL7CJKL9yzRhvqMiEBw6n0bcpqTL1Jj/AFP+pP62Y3J0fwyPmNRgxlibALZDwL/pFeo71xLWHpOnqznBTn69pAJ8gBu559O06Zy0+/wjGKn0QHWWOaJu7s39oi6xlNqWU+oMuZ/kEBW3Z1Is4ze71omwP0mXqHxkbkLAXQDMhrnz7Ht7SIuD6f8AIcZLsl8Yk3Zs9zZv9Yq5SO8pYW3sFG5mPYIu8n7C5eTU49pR7xtwELI52oTZpb5J737V5zWTx6KKN9jly3AgH1lfWZcatWMswFWXG035/T5fvGpkBIG4USATzx7yOVaFU6ZMy+n8SMsw8pe1mDGrHw2Z0tkU78bMzgijtFfSbPAsyXS6VXK40AbI7bRu3EgedqDxX28vvIWrFK2W8croz8DZCw2jce9UW4HtH5RkXh0KVxyu02eRc67TdKfp6HISuTJkKptANBPxc+d2B+ktYNA+Xw8jDwlDD6RRd7ccknlBYA/KZS/VxytJV7LrQk47vf0c90DpOfUs4BKY1ouWsG+aCjzPHqKljNidchxeMqlf/sORRf8Ama6H/KueghRjShQAB9//ADOC6r0N9RkrHywtjZNAe5/3mHmzlvsjVaeMfZtjPj0qgszagMCC5NrxwwQc1978u84LqfUtVu2rlZcfIG3g8m+SOTJdaHUeGpLKosCmJBq3offzjugZsQy7s4V1AsbhfIHYDt+stGKinJ7hybdLY6/p/UcQKNiyJqVZdrkMN2+63FCAV9OB5iauTqiMG2lLUHueN3pXepyq9bYNt0yAJwBtQL3N1x7yXJg1WRgN6YgWu35oVybHb7Tllppu3sbRdfZjdb6pmzMVttq/23V+tzORtU1Kq5Tf00FaavUOjapTvxvjyJbCsdksBzu4FAHgXfeT6fMcijYWxPjCkrkZ2O6uwP8AdfsBOpTjGKpJmTTk97M/B0/Unsdl+TbgST5HmWtJ8P65rbYuNbIO6wSfZSRf8Tr+haPOcm7OqhVthdWWYcEV513m5rMRdCFPPvMpfqGukStNXyeZt8Natz9JTjzNKAfS7hNbq/U82I7boXdAVzCWWrqV0MI/Z5tqdJkQbsj425o06sb/AF5nU/BunRMGXWkq2TG4x4QWJCkqQxKjjdTWL/1E5xPiHOK37WF3/iKT9/cj2nR9F1ePUA4g+5Wbe4VDiROLIFXZNf8APLp1pSxp/j0ZaaTexja/VuDu+hjvd/qVX+p/xE2Oewk+g6jiGHOudE3ZNnh+GiKwrkkHyv6ePvL/AFdA6JiwYgmIu2MOSC7stA7jVgmuw9TMfq/RmwZPDV0cghTztAauQpPdQeNxq/SIzjKKT2f/AAOLTFbWY0ZfBR6Fgtke2a+PIUvBmp0LSNl1C5MjgjGXJCku1KBVEcnlj/0mR4+geAR4mbB4hXdtcMUANg2/mw9gZ1vw9k0+HCyko2cIxfwRbMASVCGrIC/yTMtbWSj8d29i8NNt7mPk6Cup1SMxyDHlbkKv1ALxZJ4XsPI8ETZ1PQNHePCmM70IL7WWzRBO925IIPsJW6JkzvmOdy6YlYqi5FO48gGlocfVVi+0ta7VOLfHgOVXdwX3biSBVIt/UBf6g+k5pamo2op8L2aKEKuuSfLlTSMunxhNg2Wz87Sp3EX5g+nvNnR4VRcmVezEuxNA7vMX5TO1GdAjDKFOZCTjT8QS62luAGb35mr84jYUdz+Ne3PNetTCTdf39miXot4CCFJG1mG4qCCffn07ftKmu0iZGtvqKdluvq/pN3wO3HqBI11ICtkXZvoDuPwA1X8TE1uqyNiIxq7O722wMef6VsdvPiRG29g1XI3T9c3avHje33qcJOMOLY9mCn0Pn5cmW9XotRp8eTYysjszvvYkpjA4+s9yTZoDzkHw98PvvTVZyVZSXRFIu+Rbn0ryHr+U6XKi50KuPoPcGxY+wmspRi6X8lVb5OO6TnxNpMzH8TPWTaacp5D2W/K+eZnZPhzdkxrvKjINyHY7WGsqGI891j7UeZN8Q9WOk24sWBcZTa+7jIGxnj67Hc3395No/wD1CTI6YseF6c7VLsoIYmlHHlXnxNf8i3itmUeL2YvS82bSE4nxoXHIRX3u1njaov1HepZ6rlam2rtycFlLLuAIu9t9veW+kanIcmRnVEKKfrZlprJ8+5qpgda0g+vM7rkyGvDU3jH1WSTR8hXfjmZpqUt+TTiNIo5NdmxtW11PB5vzFippdAXU6jUouRGXH+NywIBUehPfmUU0zZcSujqcilnYFiT7gDt7zrfhTUPtY5SBwoUtwaHlz5S85KMW0tyiTbOrqMdTRqIuQesV8oAu5zXFotTs85+JcbrkIck+YvsL9IS18YZ1etgtr5MJ2aT+KKTW55LiV0KZMuN2x2Pxh1Vh5Dd/ztLI1/hqPl3dNwAyBbHIJIN+vNcek9I+IMYCFHAbG4ohxde4nleu0wxOyWaHKn1HlOqOop8oxlFwLGPqWZSpXJkBUllpjwx7ke8G1WV3DM7Fi17mP9RPfmUN4kiuPWXqPr8FLfs3vpbJhOo1G7EqgfRw+wC9vagSSRZPe52PwlqdEi5MoUIXHhBAzufDFEXfZiRZPpPNsmB1UMwKqSVBYVyO45/Ka3wt05dRmKs6quNHyEcktQ7AA2eSJz60E4u3S+jaEmnweo4f8ZcedW+XVU2Iu7YHVP6gvmAb45ijUnSsgDrmUhnYMAKuyCp8rB9/ymTl6lo8qafAjn/CRcZO0qFIoE138jx9uZM/TULY1RnypuXxH42qARatXbj3M4K9/wBHR+wzqmldUyOMoTG27KgZiHcEqQAPJfMfnxzK2k6rk1JxYg43OWXtWwAX9VdxxcPjbXKzKiMgVBtVQU4AA9/0nJY3yIozClXdtSj9RYeYHpN4Qyhb56M3KpUdx0vGfmQhbco+rcex29wFPn3/AJnVaFQm5KYd3s88twKHPka49JxfSMGsyYceU7lAc7A3BGO7ZmJ5AJHHrLqazUDKuRMeTIHYI207qVuwNGgPc+kwmnfKNU1R0GF0Rxj3nvuarAB9LETrnVXxAeEBZ5Ni7FcS02kQJvYEsAWbbwT7C5yPVOsI7ZFQFVAobu/Hf+P3lYLJiTSKmvXL1EFMaBWUN4juxo+Ys+lgceVicdqenZdLkUupXkMrKbU0eCrDv2M9D+DtSjB8f1NvDM28Wlg8AenEzviPqJzY/l0CALuNrwQFs17CdUNSUZYpbGUoJrJvc4rVdYyN+N2O0kiiR35jdH1hg1sd4u/r55lPX9OdVD01ElVJvaStWAfPuP1mdhyFGF9wbo8zpUI1sY5Ozvun9Szu1IlAkcgAV+c6npq5FIZ6I9GPach034lHhrvBBBrcAAK9/wDtNhuqNtvuD2I7TknF3VUdEWvZu67qj4nLo67TX0VY4lbUfEhfg7RxyLNfecrrdbu7nmZOfUkHg8mI6S7DmzW6p1NWZjb8/wBvABv39okwchyHhVLefHMJ0KKoxcnZ6X1XUpmAUgc9tvnOA+KNGFxg1bI1Cu+0+/pNzT6rIV3AHvFTpB1j0zhaINd7HcykXi7LSWSPOExOxCqjFjyAASa9ePKdNm6YNNhw5GV1yHazL/mB7+09B03QtPpyclW23aSf7ZgfEWpVyWJAxoOO136CX82TpFfHSs41Oo49uZcuIk5CChDG0IHkGvuaJMoafWshvGWT/wDLEfuI3U6jexZQdoNDuefc+sr3NUkUtnU6H4mGPGVbGju20FqVKQVQAUfv3l7pXxacaZMJQlcxYlg5BBP8DvdczihH48hUiiQfIgzOWjFoutSSOlOlyajMoV7a9jMyuFWhxZIsngzrujdGxhNzKWKsWDkbWoGu3cAnzPvxOY+F0Qvt1DZAuQLkS2dAwXlqo/UfK56Fg1aYsJTCleGAiBzwRztLnzJ/3nLrTa+KNtKKfyY7T6xNQ7YCypjRF4Q7War4Hovb9oubqmPFp1KAKxPAWjSgkbmrzNec53qmeryZGQOo/BiKqAxsAMSLIHBrz5mVm6ipxJYVBk3LSgWpU1Z7CzfEzjpXXovKdfubmo+MXR8iKRlQ2F/pAHI+nzqq/Sc3sy6rKVwKWu27gBV78sePKWOidJw6nMuNsjsSt/4aqg2qCWZy189vvOv6V0rFpseXGhOQMS4LABvw0QSO/wC01bhp/wCq3KJOfPBh9GOJmx48deJjAXOELcut0Tt/EbkfVem41yhsxIOTnYgqr9W3cMDYqa+n6iuk3ApTEgbl7hAxavc2TOR+Keq+JqDlQbb9PMDzI9ZEblLYSpIZ1XMcipjyfgxlwhChRZNseBz5TIx9ND04PnQsUpHbvF1PWA6KpBZgWs0fM3wJltrMiMaFHkFW7DzHE6YqSVIxk02dFk0rMpDbUxAC13X2449T3MdoOqtp8Zx3uBJA3fUQD5c/aYOh6mwK718RR5H19v2lw6hs2VTsXlgNnIBPlZHEhxfEiU0t0XsOB9W+3HbO10FF35k+w9TF6j0XLgZBkKlmG4BPrqjyGI4BnY/DGjx4sb7vCx5e6DGG/Ce4ZiL9JN1rGUQswAH93DCY+WpUi+Fq2ebZ/EQgqCv8faos19Tq1vgi/PtR+0Jrl9FK+zRTVFhsHmeJrdHc4iW4s8Emcx4oTle8sJ1Bgo8pWSLpnX6jOHQ7n/K5wvxOjkWqsVJr2/T7yxl6g1A3IhrjXPMiKxD3F1XR8WPAig87Q5J8iRzOHfJya7WZ2mo1C5EZMgJBBoA1z6znMvS7NYyO/Y8UPvNoS9mcl6M9ckVnE19N8N5GcIzADgkrz+kj13Q3R2VbIB4Jrt7y6lG+SmLLT/EzeAmFURSgVQ/c7VFUOOPKTan4m1OoVVYhVA522Aa8yJzowMDRE3OgaZHzYw/KL9TDgAkdhz5espKMErounJ7WdH0r4f1WtvUO/gY8i3uYbi57EheKU/Vz7cAzU12HR48aadFR/Dve7/iZ+5YsfInuAa9IfEPxAqrjx42BRFApeBuHH0+gricpqtUclMAd2QmgCT9Pauf5nNHKW72XSNpYx2W7Or+ENMo1TPjVUUYyqhC31lu68+Qrvcm+Jte+nzh8T7sZ/wDkTtyDTAX285J8Irj0uIZHveyl3YjlQOAgH68+85n4t6wNRn3qAFUAAfaVSy1X6JfxgvZc+IesJkcsooHsLquPMfnOcfqAA20DR3AkDgj0/b9JWyvkzsP8oAUD0Ejz6TIO4qdMYRiqMJSbdjcvUmG/aFBc/Ua+r8j5TLdyTbc+s0D0nMw3KjES0/wznXAM77Ev8KE/Wyf3+gHpzz/N8orsrUmURnfI6jGiiiNqoti+AL/Mgc+s1undO1mbLkCoVbErO5yA40UL71W7ngCM+CWyDVVjXfuRw4Jo7RTWvq1qKHvPWNflU6Q4xtZgp3eVkj7cmY62ti1FI0hp5K7GdE6U2XS48uZ/8XIqtkKAKOef4r2lTrascLL+JaKlqsgcd/07zLX4i1Gnx48ZVXGxQnP9FAUK7Edue0gyfFWQJRUBqYdge4r/AH595zKE8r6NrjVHE6pSCR6Qj9RjcksRxCdtnNRpMwHeVMuo95DmzXKT5JWi9l5tQSJNpsoJ5P8A5mTvJlzQizwLrkyWEbgxDINqi/UyVOlM5716EcCovTdVjX6CQDz+83dEUKeRrtUybaL0YR6dkSyGNjkCVVyM/wCMbvvOg1Lm6o1KeqxbVsD9pKZBmJ0hHJc2L7Dykq6JMSnb3I5PH7TR0b7/AKAO3f7Sv1RKAHaoyfBGKOd1WKjZ5kDI42sOK7XL74gTyZZy40YAL5CWsjEoabV6go2MFivp6D0jtNoXyttJAPmTz+X3mrotLtIrmbvTenrusiux4kOSXApvkj+HegBQd3LeteXpL2v6Ih5Isjt950egxhQSakepUPcwc25GqgqOOfAE+nsPOrkfUtY+ZVVyCEAVRVUo8pq9S0gBPnMhtGedvJ8ql1T3Ku1sY2gV9NqcebGACG+pboEHvOgyo+TJuxkrussB25/mUF07X9XmZsaFCBxJlzZC9EL6AKB51zMnqGGyT2/OdK+LyJmfrtCGiMg0cyy2KMJrjpyn7wl7K4nItK2SEJoQRpLWlysCaNQhDJQrOd55nU/D2VqHJ7QhKS4JidLg5PPMr63mEJiuS5S0PGR644EZ1mEJbsjo5x+8diMITQqa/Tz3nR9PPEITKZdGuXNDnykBc+sWEzLsq6rkyPEKESEsVG5EHPAgprtx2hCSQB7xdT2hCAyjjhCEkqf/2Q==',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              // عنصر أخر يضاف على الخلفية
              Positioned(
                top: 100, // تحديد الموضع العلوي
                left: 150, // تحديد الموضع الأيسر
                child: Text(
                  'مرحبًا بك!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 100, // تحديد الموضع العلوي
                left: 150, // تحديد الموضع الأيسر
                child: Text(
                  'مرحبًا بك!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // يمكنك إضافة المزيد من العناصر كما تشاء
            ],
          ),
          containerStory(),
          SizedBox(height: 5),
          imageAndMoments(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFEFA11B),
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }

  Padding imageAndMoments() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Color.fromARGB(255, 209, 171, 171),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color.fromARGB(255, 209, 171, 171),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Text(
                    "الصور",
                    style: TextStyle(fontSize: 12.sp, color: Color(0xFFEFA11B)),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Text(
                    "اللحظات",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xFFEFA11B),
                      fontFamily: 'Portada',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding containerStory() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 85.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Color.fromARGB(255, 209, 171, 171),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Text(
                    "تعديل",
                    style: TextStyle(color: Color(0xFF5C5E5E), fontSize: 10.sp),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                color: Color(0xFFEFA11B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                ),
              ),
              child: Text(
                "الحالة",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                  fontFamily: 'Portada',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text textt() {
    return Text(
      " متبقي ايام ",
      style: TextStyle(
        fontSize: 10.sp,
        color: Color(0xFFA2ACAC),
        fontFamily: 'Portada',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
