.class public Lu/aly/dz;
.super Ljava/lang/Object;
.source "UALogEntry.java"

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
        "Lu/aly/dz;",
        "Lu/aly/ee;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ee;",
            "Lu/aly/fo;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lu/aly/gg;

.field private static final l:Lu/aly/fx;

.field private static final m:Lu/aly/fx;

.field private static final n:Lu/aly/fx;

.field private static final o:Lu/aly/fx;

.field private static final p:Lu/aly/fx;

.field private static final q:Lu/aly/fx;

.field private static final r:Lu/aly/fx;

.field private static final s:Lu/aly/fx;

.field private static final t:Lu/aly/fx;

.field private static final u:Ljava/util/Map;
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
.field public a:Lu/aly/v;

.field public b:Lu/aly/p;

.field public c:Lu/aly/ab;

.field public d:Lu/aly/cl;

.field public e:Lu/aly/i;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/bz;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/dn;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lu/aly/bn;

.field public i:Lu/aly/bh;

.field private v:[Lu/aly/ee;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v3, 0xc

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "UALogEntry"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/dz;->k:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "client_stats"

    invoke-direct {v0, v1, v3, v6}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->l:Lu/aly/fx;

    .line 36
    new-instance v0, Lu/aly/fx;

    const-string v1, "app_info"

    invoke-direct {v0, v1, v3, v7}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->m:Lu/aly/fx;

    .line 37
    new-instance v0, Lu/aly/fx;

    const-string v1, "device_info"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->n:Lu/aly/fx;

    .line 38
    new-instance v0, Lu/aly/fx;

    const-string v1, "misc_info"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->o:Lu/aly/fx;

    .line 39
    new-instance v0, Lu/aly/fx;

    const-string v1, "activate_msg"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->p:Lu/aly/fx;

    .line 40
    new-instance v0, Lu/aly/fx;

    const-string v1, "instant_msgs"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->q:Lu/aly/fx;

    .line 41
    new-instance v0, Lu/aly/fx;

    const-string v1, "sessions"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->r:Lu/aly/fx;

    .line 42
    new-instance v0, Lu/aly/fx;

    const-string v1, "imprint"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->s:Lu/aly/fx;

    .line 43
    new-instance v0, Lu/aly/fx;

    const-string v1, "id_tracking"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/dz;->t:Lu/aly/fx;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    sput-object v0, Lu/aly/dz;->u:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/eb;

    invoke-direct {v2, v4}, Lu/aly/eb;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lu/aly/dz;->u:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/ed;

    invoke-direct {v2, v4}, Lu/aly/ed;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ee;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    sget-object v1, Lu/aly/ee;->a:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "client_stats"

    .line 149
    new-instance v4, Lu/aly/fs;

    const-class v5, Lu/aly/v;

    invoke-direct {v4, v5}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 148
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lu/aly/ee;->b:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "app_info"

    .line 151
    new-instance v4, Lu/aly/fs;

    const-class v5, Lu/aly/p;

    invoke-direct {v4, v5}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lu/aly/ee;->c:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "device_info"

    .line 153
    new-instance v4, Lu/aly/fs;

    const-class v5, Lu/aly/ab;

    invoke-direct {v4, v5}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 152
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lu/aly/ee;->d:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "misc_info"

    .line 155
    new-instance v4, Lu/aly/fs;

    const-class v5, Lu/aly/cl;

    invoke-direct {v4, v5}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 154
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lu/aly/ee;->e:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "activate_msg"

    .line 157
    new-instance v4, Lu/aly/fs;

    const-class v5, Lu/aly/i;

    invoke-direct {v4, v5}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 156
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lu/aly/ee;->f:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "instant_msgs"

    .line 159
    new-instance v4, Lu/aly/fq;

    .line 160
    new-instance v5, Lu/aly/fs;

    const-class v6, Lu/aly/bz;

    invoke-direct {v5, v6}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    .line 159
    invoke-direct {v4, v5}, Lu/aly/fq;-><init>(Lu/aly/fp;)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 158
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lu/aly/ee;->g:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "sessions"

    .line 162
    new-instance v4, Lu/aly/fq;

    .line 163
    new-instance v5, Lu/aly/fs;

    const-class v6, Lu/aly/dn;

    invoke-direct {v5, v6}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    .line 162
    invoke-direct {v4, v5}, Lu/aly/fq;-><init>(Lu/aly/fp;)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 161
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lu/aly/ee;->h:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "imprint"

    .line 165
    new-instance v4, Lu/aly/fs;

    const-class v5, Lu/aly/bn;

    invoke-direct {v4, v5}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 164
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lu/aly/ee;->i:Lu/aly/ee;

    new-instance v2, Lu/aly/fo;

    const-string v3, "id_tracking"

    .line 167
    new-instance v4, Lu/aly/fs;

    const-class v5, Lu/aly/bh;

    invoke-direct {v4, v5}, Lu/aly/fs;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 166
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/dz;->j:Ljava/util/Map;

    .line 169
    const-class v0, Lu/aly/dz;

    sget-object v1, Lu/aly/dz;->j:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x5

    new-array v0, v0, [Lu/aly/ee;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/ee;->e:Lu/aly/ee;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ee;->f:Lu/aly/ee;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/ee;->g:Lu/aly/ee;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/ee;->h:Lu/aly/ee;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lu/aly/ee;->i:Lu/aly/ee;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/dz;->v:[Lu/aly/ee;

    .line 173
    return-void
.end method

.method static synthetic h()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/dz;->k:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic i()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/dz;->l:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic j()Lu/aly/fx;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/dz;->m:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic k()Lu/aly/fx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/dz;->n:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic l()Lu/aly/fx;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lu/aly/dz;->o:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic m()Lu/aly/fx;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lu/aly/dz;->p:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic n()Lu/aly/fx;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lu/aly/dz;->q:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic o()Lu/aly/fx;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lu/aly/dz;->r:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic p()Lu/aly/fx;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lu/aly/dz;->s:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic q()Lu/aly/fx;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lu/aly/dz;->t:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a(Lu/aly/bz;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lu/aly/dz;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/dz;->f:Ljava/util/List;

    .line 378
    :cond_0
    iget-object v0, p0, Lu/aly/dz;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 497
    sget-object v0, Lu/aly/dz;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 498
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lu/aly/dz;->e:Lu/aly/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lu/aly/dz;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/dz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lu/aly/dz;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 502
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lu/aly/dz;->f:Ljava/util/List;

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
    .line 435
    iget-object v0, p0, Lu/aly/dz;->g:Ljava/util/List;

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
    .line 459
    iget-object v0, p0, Lu/aly/dz;->h:Lu/aly/bn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lu/aly/dz;->i:Lu/aly/bh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lu/aly/dz;->a:Lu/aly/v;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'client_stats\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/dz;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p0, Lu/aly/dz;->b:Lu/aly/p;

    if-nez v0, :cond_1

    .line 600
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'app_info\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/dz;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    iget-object v0, p0, Lu/aly/dz;->c:Lu/aly/ab;

    if-nez v0, :cond_2

    .line 603
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'device_info\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/dz;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_2
    iget-object v0, p0, Lu/aly/dz;->d:Lu/aly/cl;

    if-nez v0, :cond_3

    .line 606
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'misc_info\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/dz;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_3
    iget-object v0, p0, Lu/aly/dz;->a:Lu/aly/v;

    if-eqz v0, :cond_4

    .line 610
    invoke-static {}, Lu/aly/v;->e()V

    .line 612
    :cond_4
    iget-object v0, p0, Lu/aly/dz;->b:Lu/aly/p;

    if-eqz v0, :cond_5

    .line 613
    iget-object v0, p0, Lu/aly/dz;->b:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->i()V

    .line 615
    :cond_5
    iget-object v0, p0, Lu/aly/dz;->c:Lu/aly/ab;

    if-eqz v0, :cond_6

    .line 616
    iget-object v0, p0, Lu/aly/dz;->c:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->u()V

    .line 618
    :cond_6
    iget-object v0, p0, Lu/aly/dz;->d:Lu/aly/cl;

    if-eqz v0, :cond_7

    .line 619
    iget-object v0, p0, Lu/aly/dz;->d:Lu/aly/cl;

    invoke-virtual {v0}, Lu/aly/cl;->p()V

    .line 621
    :cond_7
    iget-object v0, p0, Lu/aly/dz;->e:Lu/aly/i;

    if-eqz v0, :cond_8

    .line 622
    invoke-static {}, Lu/aly/i;->b()V

    .line 624
    :cond_8
    iget-object v0, p0, Lu/aly/dz;->h:Lu/aly/bn;

    if-eqz v0, :cond_9

    .line 625
    iget-object v0, p0, Lu/aly/dz;->h:Lu/aly/bn;

    invoke-virtual {v0}, Lu/aly/bn;->b()V

    .line 627
    :cond_9
    iget-object v0, p0, Lu/aly/dz;->i:Lu/aly/bh;

    if-eqz v0, :cond_a

    .line 628
    iget-object v0, p0, Lu/aly/dz;->i:Lu/aly/bh;

    invoke-virtual {v0}, Lu/aly/bh;->c()V

    .line 630
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UALogEntry("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    const-string v1, "client_stats:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v1, p0, Lu/aly/dz;->a:Lu/aly/v;

    if-nez v1, :cond_5

    .line 511
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v1, "app_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v1, p0, Lu/aly/dz;->b:Lu/aly/p;

    if-nez v1, :cond_6

    .line 519
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, "device_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lu/aly/dz;->c:Lu/aly/ab;

    if-nez v1, :cond_7

    .line 527
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, "misc_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Lu/aly/dz;->d:Lu/aly/cl;

    if-nez v1, :cond_8

    .line 535
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :goto_3
    invoke-virtual {p0}, Lu/aly/dz;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, "activate_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v1, p0, Lu/aly/dz;->e:Lu/aly/i;

    if-nez v1, :cond_9

    .line 544
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_0
    :goto_4
    invoke-virtual {p0}, Lu/aly/dz;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, "instant_msgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v1, p0, Lu/aly/dz;->f:Ljava/util/List;

    if-nez v1, :cond_a

    .line 554
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_1
    :goto_5
    invoke-virtual {p0}, Lu/aly/dz;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, "sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v1, p0, Lu/aly/dz;->g:Ljava/util/List;

    if-nez v1, :cond_b

    .line 564
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_2
    :goto_6
    invoke-virtual {p0}, Lu/aly/dz;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 571
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v1, p0, Lu/aly/dz;->h:Lu/aly/bn;

    if-nez v1, :cond_c

    .line 574
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_3
    :goto_7
    invoke-virtual {p0}, Lu/aly/dz;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 581
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v1, "id_tracking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v1, p0, Lu/aly/dz;->i:Lu/aly/bh;

    if-nez v1, :cond_d

    .line 584
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_4
    :goto_8
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 513
    :cond_5
    iget-object v1, p0, Lu/aly/dz;->a:Lu/aly/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 521
    :cond_6
    iget-object v1, p0, Lu/aly/dz;->b:Lu/aly/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 529
    :cond_7
    iget-object v1, p0, Lu/aly/dz;->c:Lu/aly/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 537
    :cond_8
    iget-object v1, p0, Lu/aly/dz;->d:Lu/aly/cl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 546
    :cond_9
    iget-object v1, p0, Lu/aly/dz;->e:Lu/aly/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 556
    :cond_a
    iget-object v1, p0, Lu/aly/dz;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 566
    :cond_b
    iget-object v1, p0, Lu/aly/dz;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 576
    :cond_c
    iget-object v1, p0, Lu/aly/dz;->h:Lu/aly/bn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 586
    :cond_d
    iget-object v1, p0, Lu/aly/dz;->i:Lu/aly/bh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method
