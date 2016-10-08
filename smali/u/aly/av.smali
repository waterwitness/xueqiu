.class public Lu/aly/av;
.super Ljava/lang/Object;
.source "IdJournal.java"

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
        "Lu/aly/av;",
        "Lu/aly/ba;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ba;",
            "Lu/aly/fo;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lu/aly/gg;

.field private static final h:Lu/aly/fx;

.field private static final i:Lu/aly/fx;

.field private static final j:Lu/aly/fx;

.field private static final k:Lu/aly/fx;

.field private static final l:Ljava/util/Map;
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
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field e:B

.field private m:[Lu/aly/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/av;->g:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "domain"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->h:Lu/aly/fx;

    .line 36
    new-instance v0, Lu/aly/fx;

    const-string v1, "old_id"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->i:Lu/aly/fx;

    .line 37
    new-instance v0, Lu/aly/fx;

    const-string v1, "new_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->j:Lu/aly/fx;

    .line 38
    new-instance v0, Lu/aly/fx;

    const-string v1, "ts"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->k:Lu/aly/fx;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sput-object v0, Lu/aly/av;->l:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/ax;

    invoke-direct {v2, v3}, Lu/aly/ax;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lu/aly/av;->l:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/az;

    invoke-direct {v2, v3}, Lu/aly/az;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ba;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 125
    sget-object v1, Lu/aly/ba;->a:Lu/aly/ba;

    new-instance v2, Lu/aly/fo;

    const-string v3, "domain"

    .line 126
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v5}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lu/aly/ba;->b:Lu/aly/ba;

    new-instance v2, Lu/aly/fo;

    const-string v3, "old_id"

    .line 128
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v5}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/ba;->c:Lu/aly/ba;

    new-instance v2, Lu/aly/fo;

    const-string v3, "new_id"

    .line 130
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v5}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lu/aly/ba;->d:Lu/aly/ba;

    new-instance v2, Lu/aly/fo;

    const-string v3, "ts"

    .line 132
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v8}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/av;->f:Ljava/util/Map;

    .line 134
    const-class v0, Lu/aly/av;

    sget-object v1, Lu/aly/av;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-byte v2, p0, Lu/aly/av;->e:B

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/ba;

    sget-object v1, Lu/aly/ba;->b:Lu/aly/ba;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/av;->m:[Lu/aly/ba;

    .line 138
    return-void
.end method

.method static synthetic d()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/av;->g:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic e()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/av;->h:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic f()Lu/aly/fx;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/av;->i:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic g()Lu/aly/fx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/av;->j:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic h()Lu/aly/fx;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lu/aly/av;->k:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lu/aly/av;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 283
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 274
    iget-byte v0, p0, Lu/aly/av;->e:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 274
    iput-byte v0, p0, Lu/aly/av;->e:B

    .line 275
    return-void
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lu/aly/av;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 287
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lu/aly/av;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lu/aly/av;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v1, "domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v1, p0, Lu/aly/av;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 296
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :goto_0
    invoke-virtual {p0}, Lu/aly/av;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "old_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Lu/aly/av;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 305
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_0
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, "new_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lu/aly/av;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 314
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-wide v2, p0, Lu/aly/av;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :cond_1
    iget-object v1, p0, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 307
    :cond_2
    iget-object v1, p0, Lu/aly/av;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 316
    :cond_3
    iget-object v1, p0, Lu/aly/av;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
