.class public Lu/aly/ah;
.super Ljava/lang/Object;
.source "Error.java"

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
        "Lu/aly/ah;",
        "Lu/aly/am;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/am;",
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
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lu/aly/an;

.field d:B

.field private k:[Lu/aly/am;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ah;->f:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "ts"

    invoke-direct {v0, v1, v7, v5}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ah;->g:Lu/aly/fx;

    .line 36
    new-instance v0, Lu/aly/fx;

    const-string v1, "context"

    invoke-direct {v0, v1, v8, v6}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ah;->h:Lu/aly/fx;

    .line 37
    new-instance v0, Lu/aly/fx;

    const-string v1, "source"

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ah;->i:Lu/aly/fx;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sput-object v0, Lu/aly/ah;->j:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/aj;

    invoke-direct {v2, v4}, Lu/aly/aj;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/ah;->j:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/al;

    invoke-direct {v2, v4}, Lu/aly/al;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/am;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v1, Lu/aly/am;->a:Lu/aly/am;

    new-instance v2, Lu/aly/fo;

    const-string v3, "ts"

    .line 129
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 128
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lu/aly/am;->b:Lu/aly/am;

    new-instance v2, Lu/aly/fo;

    const-string v3, "context"

    .line 131
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v8}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 130
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/am;->c:Lu/aly/am;

    new-instance v2, Lu/aly/fo;

    const-string v3, "source"

    .line 133
    new-instance v4, Lu/aly/fn;

    const-class v5, Lu/aly/an;

    invoke-direct {v4, v5}, Lu/aly/fn;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 132
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ah;->e:Ljava/util/Map;

    .line 135
    const-class v0, Lu/aly/ah;

    sget-object v1, Lu/aly/ah;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-byte v2, p0, Lu/aly/ah;->d:B

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/am;

    sget-object v1, Lu/aly/am;->c:Lu/aly/am;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/ah;->k:[Lu/aly/am;

    .line 139
    return-void
.end method

.method static synthetic e()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/ah;->f:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic f()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/ah;->g:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic g()Lu/aly/fx;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/ah;->h:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic h()Lu/aly/fx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/ah;->i:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lu/aly/ah;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 262
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 197
    iget-byte v0, p0, Lu/aly/ah;->d:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 197
    iput-byte v0, p0, Lu/aly/ah;->d:B

    .line 198
    return-void
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lu/aly/ah;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 266
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lu/aly/ah;->c:Lu/aly/an;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lu/aly/ah;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'context\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/ah;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-wide v2, p0, Lu/aly/ah;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Lu/aly/ah;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 279
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :goto_0
    invoke-virtual {p0}, Lu/aly/ah;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, "source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, Lu/aly/ah;->c:Lu/aly/an;

    if-nez v1, :cond_2

    .line 288
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_1
    iget-object v1, p0, Lu/aly/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lu/aly/ah;->c:Lu/aly/an;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
