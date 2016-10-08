.class public Lu/aly/cl;
.super Ljava/lang/Object;
.source "MiscInfo.java"

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
        "Lu/aly/cl;",
        "Lu/aly/cq;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/cq;",
            "Lu/aly/fo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lu/aly/gg;

.field private static final n:Lu/aly/fx;

.field private static final o:Lu/aly/fx;

.field private static final p:Lu/aly/fx;

.field private static final q:Lu/aly/fx;

.field private static final r:Lu/aly/fx;

.field private static final s:Lu/aly/fx;

.field private static final t:Lu/aly/fx;

.field private static final u:Lu/aly/fx;

.field private static final v:Lu/aly/fx;

.field private static final w:Lu/aly/fx;

.field private static final x:Lu/aly/fx;

.field private static final y:Ljava/util/Map;
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
.field private A:[Lu/aly/cq;

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lu/aly/h;

.field public j:Ljava/lang/String;

.field public k:Lu/aly/ef;

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x4

    const/16 v5, 0x8

    const/16 v7, 0xb

    const/4 v6, 0x2

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "MiscInfo"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/cl;->m:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "time_zone"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->n:Lu/aly/fx;

    .line 36
    new-instance v0, Lu/aly/fx;

    const-string v1, "language"

    invoke-direct {v0, v1, v7, v6}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->o:Lu/aly/fx;

    .line 37
    new-instance v0, Lu/aly/fx;

    const-string v1, "country"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->p:Lu/aly/fx;

    .line 38
    new-instance v0, Lu/aly/fx;

    const-string v1, "latitude"

    invoke-direct {v0, v1, v8, v8}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->q:Lu/aly/fx;

    .line 39
    new-instance v0, Lu/aly/fx;

    const-string v1, "longitude"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->r:Lu/aly/fx;

    .line 40
    new-instance v0, Lu/aly/fx;

    const-string v1, "carrier"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->s:Lu/aly/fx;

    .line 41
    new-instance v0, Lu/aly/fx;

    const-string v1, "latency"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->t:Lu/aly/fx;

    .line 42
    new-instance v0, Lu/aly/fx;

    const-string v1, "display_name"

    invoke-direct {v0, v1, v7, v5}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->u:Lu/aly/fx;

    .line 43
    new-instance v0, Lu/aly/fx;

    const-string v1, "access_type"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->v:Lu/aly/fx;

    .line 44
    new-instance v0, Lu/aly/fx;

    const-string v1, "access_subtype"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->w:Lu/aly/fx;

    .line 45
    new-instance v0, Lu/aly/fx;

    const-string v1, "user_info"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v7}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cl;->x:Lu/aly/fx;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    sput-object v0, Lu/aly/cl;->y:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/cn;

    invoke-direct {v2, v3}, Lu/aly/cn;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lu/aly/cl;->y:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/cp;

    invoke-direct {v2, v3}, Lu/aly/cp;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/cq;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 171
    sget-object v1, Lu/aly/cq;->a:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "time_zone"

    .line 172
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v5}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 171
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lu/aly/cq;->b:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "language"

    .line 174
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 173
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lu/aly/cq;->c:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "country"

    .line 176
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 175
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lu/aly/cq;->d:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "latitude"

    .line 178
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v8}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 177
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lu/aly/cq;->e:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "longitude"

    .line 180
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v8}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 179
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lu/aly/cq;->f:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "carrier"

    .line 182
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 181
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lu/aly/cq;->g:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "latency"

    .line 184
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v5}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 183
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lu/aly/cq;->h:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "display_name"

    .line 186
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 185
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lu/aly/cq;->i:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "access_type"

    .line 188
    new-instance v4, Lu/aly/fn;

    const-class v5, Lu/aly/h;

    invoke-direct {v4, v5}, Lu/aly/fn;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 187
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lu/aly/cq;->j:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "access_subtype"

    .line 190
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 189
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lu/aly/cq;->k:Lu/aly/cq;

    new-instance v2, Lu/aly/fo;

    const-string v3, "user_info"

    .line 192
    new-instance v4, Lu/aly/fs;

    const-class v5, Lu/aly/ef;

    invoke-direct {v4, v5}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 191
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/cl;->l:Ljava/util/Map;

    .line 194
    const-class v0, Lu/aly/cl;

    sget-object v1, Lu/aly/cl;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 195
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-byte v2, p0, Lu/aly/cl;->z:B

    .line 167
    const/16 v0, 0xb

    new-array v0, v0, [Lu/aly/cq;

    sget-object v1, Lu/aly/cq;->a:Lu/aly/cq;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/cq;->b:Lu/aly/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/cq;->c:Lu/aly/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/cq;->d:Lu/aly/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lu/aly/cq;->e:Lu/aly/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lu/aly/cq;->f:Lu/aly/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/cq;->g:Lu/aly/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/cq;->h:Lu/aly/cq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/cq;->i:Lu/aly/cq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/cq;->j:Lu/aly/cq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lu/aly/cq;->k:Lu/aly/cq;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/cl;->A:[Lu/aly/cq;

    .line 198
    return-void
.end method

.method static synthetic A()Lu/aly/fx;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lu/aly/cl;->w:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic B()Lu/aly/fx;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lu/aly/cl;->x:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic q()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/cl;->m:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic r()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/cl;->n:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic s()Lu/aly/fx;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/cl;->o:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic t()Lu/aly/fx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/cl;->p:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic u()Lu/aly/fx;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lu/aly/cl;->q:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic v()Lu/aly/fx;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lu/aly/cl;->r:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic w()Lu/aly/fx;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lu/aly/cl;->s:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic x()Lu/aly/fx;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lu/aly/cl;->t:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic y()Lu/aly/fx;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lu/aly/cl;->u:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic z()Lu/aly/fx;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lu/aly/cl;->v:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 528
    sget-object v0, Lu/aly/cl;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 529
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 271
    iget-byte v0, p0, Lu/aly/cl;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 275
    iget-byte v0, p0, Lu/aly/cl;->z:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 275
    iput-byte v0, p0, Lu/aly/cl;->z:B

    .line 276
    return-void
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 532
    sget-object v0, Lu/aly/cl;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 533
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lu/aly/cl;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lu/aly/cl;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 342
    iget-byte v0, p0, Lu/aly/cl;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 346
    iget-byte v0, p0, Lu/aly/cl;->z:B

    .line 2137
    or-int/lit8 v0, v0, 0x2

    .line 2128
    int-to-byte v0, v0

    .line 346
    iput-byte v0, p0, Lu/aly/cl;->z:B

    .line 347
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 365
    iget-byte v0, p0, Lu/aly/cl;->z:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 369
    iget-byte v0, p0, Lu/aly/cl;->z:B

    .line 3137
    or-int/lit8 v0, v0, 0x4

    .line 3128
    int-to-byte v0, v0

    .line 369
    iput-byte v0, p0, Lu/aly/cl;->z:B

    .line 370
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lu/aly/cl;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 412
    iget-byte v0, p0, Lu/aly/cl;->z:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 416
    iget-byte v0, p0, Lu/aly/cl;->z:B

    .line 4137
    or-int/lit8 v0, v0, 0x8

    .line 4128
    int-to-byte v0, v0

    .line 416
    iput-byte v0, p0, Lu/aly/cl;->z:B

    .line 417
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lu/aly/cl;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lu/aly/cl;->i:Lu/aly/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lu/aly/cl;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lu/aly/cl;->k:Lu/aly/ef;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lu/aly/cl;->k:Lu/aly/ef;

    if-eqz v0, :cond_0

    .line 641
    invoke-static {}, Lu/aly/ef;->f()V

    .line 643
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "MiscInfo("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x1

    .line 540
    invoke-virtual {p0}, Lu/aly/cl;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    const-string v0, "time_zone:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget v0, p0, Lu/aly/cl;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 545
    :cond_0
    invoke-virtual {p0}, Lu/aly/cl;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 546
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_1
    const-string v0, "language:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v0, p0, Lu/aly/cl;->b:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 549
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 555
    :cond_2
    invoke-virtual {p0}, Lu/aly/cl;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 556
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_3
    const-string v0, "country:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v0, p0, Lu/aly/cl;->c:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 559
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 565
    :cond_4
    invoke-virtual {p0}, Lu/aly/cl;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 566
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_5
    const-string v0, "latitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-wide v4, p0, Lu/aly/cl;->d:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 571
    :cond_6
    invoke-virtual {p0}, Lu/aly/cl;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 572
    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_7
    const-string v0, "longitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-wide v4, p0, Lu/aly/cl;->e:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 577
    :cond_8
    invoke-virtual {p0}, Lu/aly/cl;->i()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 578
    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_9
    const-string v0, "carrier:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v0, p0, Lu/aly/cl;->f:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 581
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    .line 587
    :cond_a
    invoke-virtual {p0}, Lu/aly/cl;->j()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 588
    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_b
    const-string v0, "latency:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget v0, p0, Lu/aly/cl;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 593
    :cond_c
    invoke-virtual {p0}, Lu/aly/cl;->l()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 594
    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_d
    const-string v0, "display_name:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v0, p0, Lu/aly/cl;->h:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 597
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    .line 603
    :cond_e
    invoke-virtual {p0}, Lu/aly/cl;->m()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 604
    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :cond_f
    const-string v0, "access_type:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v0, p0, Lu/aly/cl;->i:Lu/aly/h;

    if-nez v0, :cond_18

    .line 607
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    .line 613
    :cond_10
    invoke-virtual {p0}, Lu/aly/cl;->n()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 614
    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_11
    const-string v0, "access_subtype:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-object v0, p0, Lu/aly/cl;->j:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 617
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :goto_5
    invoke-virtual {p0}, Lu/aly/cl;->o()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 624
    if-nez v1, :cond_12

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_12
    const-string v0, "user_info:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-object v0, p0, Lu/aly/cl;->k:Lu/aly/ef;

    if-nez v0, :cond_1a

    .line 627
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_13
    :goto_6
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :cond_14
    iget-object v0, p0, Lu/aly/cl;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 561
    :cond_15
    iget-object v0, p0, Lu/aly/cl;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 583
    :cond_16
    iget-object v0, p0, Lu/aly/cl;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 599
    :cond_17
    iget-object v0, p0, Lu/aly/cl;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 609
    :cond_18
    iget-object v0, p0, Lu/aly/cl;->i:Lu/aly/h;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 619
    :cond_19
    iget-object v0, p0, Lu/aly/cl;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 629
    :cond_1a
    iget-object v0, p0, Lu/aly/cl;->k:Lu/aly/ef;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1b
    move v1, v0

    goto :goto_5
.end method
