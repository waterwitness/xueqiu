.class public Lu/aly/ef;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/fa",
        "<",
        "Lu/aly/ef;",
        "Lu/aly/ek;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ek;",
            "Lu/aly/fo;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lu/aly/gg;

.field private static final g:Lu/aly/fx;

.field private static final h:Lu/aly/fx;

.field private static final i:Lu/aly/fx;

.field private static final j:Lu/aly/fx;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/gi;",
            ">;",
            "Lu/aly/gj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lu/aly/au;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private l:B

.field private m:[Lu/aly/ek;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x8

    const/16 v7, 0xb

    const/4 v6, 0x2

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "UserInfo"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ef;->f:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "gender"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v8, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ef;->g:Lu/aly/fx;

    .line 36
    new-instance v0, Lu/aly/fx;

    const-string v1, "age"

    invoke-direct {v0, v1, v8, v6}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ef;->h:Lu/aly/fx;

    .line 37
    new-instance v0, Lu/aly/fx;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ef;->i:Lu/aly/fx;

    .line 38
    new-instance v0, Lu/aly/fx;

    const-string v1, "source"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ef;->j:Lu/aly/fx;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sput-object v0, Lu/aly/ef;->k:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/eh;

    invoke-direct {v2, v3}, Lu/aly/eh;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lu/aly/ef;->k:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/ej;

    invoke-direct {v2, v3}, Lu/aly/ej;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ek;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 133
    sget-object v1, Lu/aly/ek;->a:Lu/aly/ek;

    new-instance v2, Lu/aly/fo;

    const-string v3, "gender"

    .line 134
    new-instance v4, Lu/aly/fn;

    const-class v5, Lu/aly/au;

    invoke-direct {v4, v5}, Lu/aly/fn;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lu/aly/ek;->b:Lu/aly/ek;

    new-instance v2, Lu/aly/fo;

    const-string v3, "age"

    .line 136
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v8}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lu/aly/ek;->c:Lu/aly/ek;

    new-instance v2, Lu/aly/fo;

    const-string v3, "id"

    .line 138
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 137
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lu/aly/ek;->d:Lu/aly/ek;

    new-instance v2, Lu/aly/fo;

    const-string v3, "source"

    .line 140
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 139
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ef;->e:Ljava/util/Map;

    .line 142
    const-class v0, Lu/aly/ef;

    sget-object v1, Lu/aly/ef;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-byte v2, p0, Lu/aly/ef;->l:B

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Lu/aly/ek;

    sget-object v1, Lu/aly/ek;->a:Lu/aly/ek;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ek;->b:Lu/aly/ek;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/ek;->c:Lu/aly/ek;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/ek;->d:Lu/aly/ek;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ef;->m:[Lu/aly/ek;

    .line 146
    return-void
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method static synthetic g()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/ef;->f:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic h()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/ef;->g:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic i()Lu/aly/fx;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/ef;->h:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic j()Lu/aly/fx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/ef;->i:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic k()Lu/aly/fx;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lu/aly/ef;->j:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lu/aly/ef;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 287
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lu/aly/ef;->a:Lu/aly/au;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lu/aly/ef;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 291
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 226
    iget-byte v0, p0, Lu/aly/ef;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 230
    iget-byte v0, p0, Lu/aly/ef;->l:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 230
    iput-byte v0, p0, Lu/aly/ef;->l:B

    .line 231
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lu/aly/ef;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lu/aly/ef;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "UserInfo("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x1

    .line 298
    invoke-virtual {p0}, Lu/aly/ef;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    const-string v0, "gender:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v0, p0, Lu/aly/ef;->a:Lu/aly/au;

    if-nez v0, :cond_6

    .line 301
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lu/aly/ef;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    const-string v0, "age:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget v0, p0, Lu/aly/ef;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 313
    :cond_2
    invoke-virtual {p0}, Lu/aly/ef;->d()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 314
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_3
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v0, p0, Lu/aly/ef;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 317
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_1
    invoke-virtual {p0}, Lu/aly/ef;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    if-nez v1, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_4
    const-string v0, "source:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v0, p0, Lu/aly/ef;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 327
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_5
    :goto_2
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_6
    iget-object v0, p0, Lu/aly/ef;->a:Lu/aly/au;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 319
    :cond_7
    iget-object v0, p0, Lu/aly/ef;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 329
    :cond_8
    iget-object v0, p0, Lu/aly/ef;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    move v1, v0

    goto :goto_1
.end method
