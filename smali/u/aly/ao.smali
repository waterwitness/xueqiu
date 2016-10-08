.class public Lu/aly/ao;
.super Ljava/lang/Object;
.source "Event.java"

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
        "Lu/aly/ao;",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/at;",
            "Lu/aly/fo;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lu/aly/gg;

.field private static final i:Lu/aly/fx;

.field private static final j:Lu/aly/fx;

.field private static final k:Lu/aly/fx;

.field private static final l:Lu/aly/fx;

.field private static final m:Lu/aly/fx;

.field private static final n:Ljava/util/Map;
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

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/cx;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:I

.field public e:J

.field f:B

.field private o:[Lu/aly/at;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0xb

    const/4 v10, 0x2

    const/16 v9, 0xa

    const/4 v8, 0x1

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "Event"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ao;->h:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "name"

    invoke-direct {v0, v1, v6, v8}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->i:Lu/aly/fx;

    .line 36
    new-instance v0, Lu/aly/fx;

    const-string v1, "properties"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v10}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->j:Lu/aly/fx;

    .line 37
    new-instance v0, Lu/aly/fx;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->k:Lu/aly/fx;

    .line 38
    new-instance v0, Lu/aly/fx;

    const-string v1, "acc"

    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->l:Lu/aly/fx;

    .line 39
    new-instance v0, Lu/aly/fx;

    const-string v1, "ts"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->m:Lu/aly/fx;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    sput-object v0, Lu/aly/ao;->n:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/aq;

    invoke-direct {v2, v4}, Lu/aly/aq;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lu/aly/ao;->n:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/as;

    invoke-direct {v2, v4}, Lu/aly/as;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/at;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 132
    sget-object v1, Lu/aly/at;->a:Lu/aly/at;

    new-instance v2, Lu/aly/fo;

    const-string v3, "name"

    .line 133
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v6}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 132
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lu/aly/at;->b:Lu/aly/at;

    new-instance v2, Lu/aly/fo;

    const-string v3, "properties"

    .line 135
    new-instance v4, Lu/aly/fr;

    .line 136
    new-instance v5, Lu/aly/fp;

    invoke-direct {v5, v6}, Lu/aly/fp;-><init>(B)V

    .line 137
    new-instance v6, Lu/aly/fs;

    const-class v7, Lu/aly/cx;

    invoke-direct {v6, v7}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    .line 135
    invoke-direct {v4, v5, v6}, Lu/aly/fr;-><init>(Lu/aly/fp;Lu/aly/fp;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lu/aly/at;->c:Lu/aly/at;

    new-instance v2, Lu/aly/fo;

    const-string v3, "duration"

    .line 139
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v9}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lu/aly/at;->d:Lu/aly/at;

    new-instance v2, Lu/aly/fo;

    const-string v3, "acc"

    .line 141
    new-instance v4, Lu/aly/fp;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 140
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lu/aly/at;->e:Lu/aly/at;

    new-instance v2, Lu/aly/fo;

    const-string v3, "ts"

    .line 143
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v9}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 142
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ao;->g:Ljava/util/Map;

    .line 145
    const-class v0, Lu/aly/ao;

    sget-object v1, Lu/aly/ao;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte v2, p0, Lu/aly/ao;->f:B

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/at;

    sget-object v1, Lu/aly/at;->c:Lu/aly/at;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/at;->d:Lu/aly/at;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ao;->o:[Lu/aly/at;

    .line 149
    return-void
.end method

.method static synthetic g()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/ao;->h:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic h()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/ao;->i:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic i()Lu/aly/fx;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/ao;->j:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic j()Lu/aly/fx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/ao;->k:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic k()Lu/aly/fx;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lu/aly/ao;->l:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic l()Lu/aly/fx;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lu/aly/ao;->m:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lu/aly/ao;
    .locals 0

    .prologue
    .line 294
    iput p1, p0, Lu/aly/ao;->d:I

    .line 295
    invoke-virtual {p0}, Lu/aly/ao;->d()V

    .line 296
    return-object p0
.end method

.method public final a(J)Lu/aly/ao;
    .locals 1

    .prologue
    .line 317
    iput-wide p1, p0, Lu/aly/ao;->e:J

    .line 318
    invoke-virtual {p0}, Lu/aly/ao;->e()V

    .line 319
    return-object p0
.end method

.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 340
    sget-object v0, Lu/aly/ao;->n:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 341
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 282
    iget-byte v0, p0, Lu/aly/ao;->f:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 286
    iget-byte v0, p0, Lu/aly/ao;->f:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 286
    iput-byte v0, p0, Lu/aly/ao;->f:B

    .line 287
    return-void
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lu/aly/ao;->n:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 345
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 305
    iget-byte v0, p0, Lu/aly/ao;->f:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 309
    iget-byte v0, p0, Lu/aly/ao;->f:B

    .line 2137
    or-int/lit8 v0, v0, 0x2

    .line 2128
    int-to-byte v0, v0

    .line 309
    iput-byte v0, p0, Lu/aly/ao;->f:B

    .line 310
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 332
    iget-byte v0, p0, Lu/aly/ao;->f:B

    .line 3137
    or-int/lit8 v0, v0, 0x4

    .line 3128
    int-to-byte v0, v0

    .line 332
    iput-byte v0, p0, Lu/aly/ao;->f:B

    .line 333
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lu/aly/ao;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lu/aly/ao;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'properties\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lu/aly/ao;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 354
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, "properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lu/aly/ao;->b:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 362
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :goto_1
    invoke-virtual {p0}, Lu/aly/ao;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-wide v2, p0, Lu/aly/ao;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    :cond_0
    invoke-virtual {p0}, Lu/aly/ao;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "acc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget v1, p0, Lu/aly/ao;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-wide v2, p0, Lu/aly/ao;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_2
    iget-object v1, p0, Lu/aly/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :cond_3
    iget-object v1, p0, Lu/aly/ao;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
