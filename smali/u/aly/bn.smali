.class public Lu/aly/bn;
.super Ljava/lang/Object;
.source "Imprint.java"

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
        "Lu/aly/bn;",
        "Lu/aly/bs;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bs;",
            "Lu/aly/fo;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lu/aly/gg;

.field private static final g:Lu/aly/fx;

.field private static final h:Lu/aly/fx;

.field private static final i:Lu/aly/fx;

.field private static final j:Ljava/util/Map;
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
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bt;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field d:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x0

    const/16 v9, 0xb

    const/4 v8, 0x1

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bn;->f:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "property"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v8}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->g:Lu/aly/fx;

    .line 36
    new-instance v0, Lu/aly/fx;

    const-string v1, "version"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v10, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->h:Lu/aly/fx;

    .line 37
    new-instance v0, Lu/aly/fx;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->i:Lu/aly/fx;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sput-object v0, Lu/aly/bn;->j:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/bp;

    invoke-direct {v2, v3}, Lu/aly/bp;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/bn;->j:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/br;

    invoke-direct {v2, v3}, Lu/aly/br;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bs;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 119
    sget-object v1, Lu/aly/bs;->a:Lu/aly/bs;

    new-instance v2, Lu/aly/fo;

    const-string v3, "property"

    .line 120
    new-instance v4, Lu/aly/fr;

    .line 121
    new-instance v5, Lu/aly/fp;

    invoke-direct {v5, v9}, Lu/aly/fp;-><init>(B)V

    .line 122
    new-instance v6, Lu/aly/fs;

    const-class v7, Lu/aly/bt;

    invoke-direct {v6, v7}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    .line 120
    invoke-direct {v4, v5, v6}, Lu/aly/fr;-><init>(Lu/aly/fp;Lu/aly/fp;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lu/aly/bs;->b:Lu/aly/bs;

    new-instance v2, Lu/aly/fo;

    const-string v3, "version"

    .line 124
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v10}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/bs;->c:Lu/aly/bs;

    new-instance v2, Lu/aly/fo;

    const-string v3, "checksum"

    .line 126
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v9}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bn;->e:Ljava/util/Map;

    .line 128
    const-class v0, Lu/aly/bn;

    sget-object v1, Lu/aly/bn;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bn;->d:B

    .line 132
    return-void
.end method

.method static synthetic c()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/bn;->f:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic d()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/bn;->g:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic e()Lu/aly/fx;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/bn;->h:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic f()Lu/aly/fx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/bn;->i:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 239
    iget-byte v0, p0, Lu/aly/bn;->d:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 239
    iput-byte v0, p0, Lu/aly/bn;->d:B

    .line 240
    return-void
.end method

.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lu/aly/bn;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 272
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lu/aly/bn;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    return-void
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lu/aly/bn;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 276
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v1, "property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lu/aly/bn;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 285
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v1, p0, Lu/aly/bn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Lu/aly/bn;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 297
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :cond_0
    iget-object v1, p0, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 299
    :cond_1
    iget-object v1, p0, Lu/aly/bn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
