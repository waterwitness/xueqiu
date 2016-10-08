.class public final Lcom/snowballfinance/messageplatform/b/e;
.super Ljava/lang/Object;
.source "Patterns.java"


# static fields
.field public static a:Ljava/util/regex/Pattern;

.field public static b:Ljava/util/regex/Pattern;

.field public static c:Ljava/util/regex/Pattern;

.field public static d:Ljava/util/regex/Pattern;

.field public static e:Ljava/util/regex/Pattern;

.field public static f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/lang/Integer;

.field public static final h:Ljava/lang/Integer;

.field public static final i:Ljava/lang/Integer;

.field public static final j:Ljava/lang/Integer;

.field public static final k:Ljava/lang/Integer;

.field public static final l:Ljava/lang/Integer;

.field public static final m:Ljava/lang/Integer;

.field public static final n:Ljava/lang/Integer;

.field public static final o:Ljava/lang/Integer;

.field public static final p:Ljava/lang/Integer;

.field public static final q:Ljava/lang/Integer;

.field public static final r:Ljava/lang/Integer;

.field public static final s:Ljava/lang/Integer;

.field public static final t:Ljava/lang/Integer;

.field public static final u:Ljava/lang/Integer;

.field public static final v:Ljava/lang/Integer;

.field private static w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    const-string v0, "((https?://)?(www\\.)?xueqiu\\.com/)([sS]/)([a-zA-Z0-9.]+)(/)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->a:Ljava/util/regex/Pattern;

    .line 27
    const-string v0, "((https?://)?(www\\.)?xueqiu\\.com/)(g/)([a-zA-Z0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->b:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "((https?://)?(www\\.)?xueqiu\\.com/)([sS]/)([a-zA-Z0-9]+/)([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->c:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "((https?://)?(www\\.)?xueqiu\\.com/)([0-9]+/)([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->d:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "((https?://)?(www\\.)?xueqiu\\.com/)([a-zA-Z0-9]+)(/)?(profile|comments|favs|friends|followers)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->e:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "((https?://)?(www\\.)?xueqiu\\.com/)(tips|about|service|setting|event|hq|talks|today|people|performance|portfolios|calendar|favs|comments|atme|status).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->f:Ljava/util/regex/Pattern;

    .line 187
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SH500"

    aput-object v2, v1, v4

    const-string v2, "SH510"

    aput-object v2, v1, v5

    const-string v2, "SH511"

    aput-object v2, v1, v6

    const-string v2, "SH513"

    aput-object v2, v1, v7

    const-string v2, "SZ15"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "SZ18"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SZ16"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->w:Ljava/util/Set;

    .line 188
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BTCNCNY"

    aput-object v2, v1, v4

    const-string v2, "MTGOXAUD"

    aput-object v2, v1, v5

    const-string v2, "MTGOXCNY"

    aput-object v2, v1, v6

    const-string v2, "MTGOXEUR"

    aput-object v2, v1, v7

    const-string v2, "MTGOXGBP"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "MTGOXJPY"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "MTGOXUSD"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->x:Ljava/util/Set;

    .line 189
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DJI30"

    aput-object v2, v1, v4

    const-string v2, "NASDAQ"

    aput-object v2, v1, v5

    const-string v2, "SP500"

    aput-object v2, v1, v6

    const-string v2, "ICS30"

    aput-object v2, v1, v7

    const-string v2, "SLR10"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "TMT20"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "HCP10"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "EDU10"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->y:Ljava/util/Set;

    .line 190
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "HKHSI"

    aput-object v2, v1, v4

    const-string v2, "HKHSF"

    aput-object v2, v1, v5

    const-string v2, "HKHSU"

    aput-object v2, v1, v6

    const-string v2, "HKHSP"

    aput-object v2, v1, v7

    const-string v2, "HKHSC"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "HKVHSI"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "HKHSCEI"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "HKHSCCI"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "HKGEM"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "HKHKL"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->z:Ljava/util/Set;

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->g:Ljava/lang/Integer;

    .line 196
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->h:Ljava/lang/Integer;

    .line 197
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->i:Ljava/lang/Integer;

    .line 198
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->j:Ljava/lang/Integer;

    .line 201
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->k:Ljava/lang/Integer;

    .line 202
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->l:Ljava/lang/Integer;

    .line 203
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->m:Ljava/lang/Integer;

    .line 204
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->n:Ljava/lang/Integer;

    .line 205
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->o:Ljava/lang/Integer;

    .line 206
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->p:Ljava/lang/Integer;

    .line 207
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->q:Ljava/lang/Integer;

    .line 208
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->r:Ljava/lang/Integer;

    .line 209
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->s:Ljava/lang/Integer;

    .line 212
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->t:Ljava/lang/Integer;

    .line 213
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->u:Ljava/lang/Integer;

    .line 216
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/b/e;->v:Ljava/lang/Integer;

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->l:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "\u6307\u6570"

    .line 184
    :goto_0
    return-object v0

    .line 160
    :cond_0
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->m:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string v0, "\u5c01\u95ed\u5f0f\u57fa\u91d1"

    goto :goto_0

    .line 163
    :cond_1
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->n:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const-string v0, "\u53ef\u8f6c\u503a"

    goto :goto_0

    .line 166
    :cond_2
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->o:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    const-string v0, "\u56fd\u503a"

    goto :goto_0

    .line 169
    :cond_3
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->p:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const-string v0, "\u4f01\u503a"

    goto :goto_0

    .line 172
    :cond_4
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->q:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    const-string v0, "\u56de\u8d2d"

    goto :goto_0

    .line 175
    :cond_5
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->r:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    const-string v0, "\u8d27\u5e01\u57fa\u91d1"

    goto :goto_0

    .line 178
    :cond_6
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->s:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    const-string v0, "\u56fd\u503a\u671f\u8d27"

    goto :goto_0

    .line 181
    :cond_7
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->v:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 182
    const-string v0, "\u6bd4\u7279\u5e01"

    goto :goto_0

    .line 184
    :cond_8
    const-string v0, "\u80a1\u7968"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    if-nez p0, :cond_1

    .line 47
    const/4 p0, 0x0

    .line 53
    :cond_0
    :goto_0
    return-object p0

    .line 49
    :cond_1
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 50
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-static {p0}, Lcom/snowballfinance/messageplatform/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/snowballfinance/messageplatform/b/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/snowballfinance/messageplatform/b/e;->w:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->m:Ljava/lang/Integer;

    .line 143
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 86
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/snowballfinance/messageplatform/b/e;->w:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->m:Ljava/lang/Integer;

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "^S[HZ][0-9]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    const-string v0, "^SZ200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 97
    :cond_2
    const-string v0, "^(SH(201|202|203|204|131)|SZ(13|395032)).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->q:Ljava/lang/Integer;

    goto :goto_0

    .line 101
    :cond_3
    const-string v0, "^(SH(01|02|13)|SZ(10|09)).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->o:Ljava/lang/Integer;

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "^(SH12|SZ11).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->p:Ljava/lang/Integer;

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "^(SH11|SZ12).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->n:Ljava/lang/Integer;

    goto :goto_0

    .line 113
    :cond_6
    const-string v0, "^SH900.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 117
    :cond_7
    const-string v0, "^(SH00|SZ399).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->l:Ljava/lang/Integer;

    goto :goto_0

    .line 122
    :cond_8
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 123
    :cond_9
    const-string v0, "^MF[\\d\\w]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->r:Ljava/lang/Integer;

    goto :goto_0

    .line 126
    :cond_a
    const-string v0, "^[\\d\\w]+\\.FM$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->s:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 129
    :cond_b
    const-string v0, "^\\d+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->t:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 132
    :cond_c
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->y:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 134
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 135
    :cond_d
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->z:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 137
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->u:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 139
    :cond_e
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->x:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->v:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 143
    :cond_f
    sget-object v0, Lcom/snowballfinance/messageplatform/b/e;->g:Ljava/lang/Integer;

    goto/16 :goto_0
.end method
