.class public Lu/aly/cf;
.super Ljava/lang/Object;
.source "Location.java"

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
        "Lu/aly/cf;",
        "Lu/aly/ck;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ck;",
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
.field public a:D

.field public b:D

.field public c:J

.field d:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/cf;->f:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "lat"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->g:Lu/aly/fx;

    .line 36
    new-instance v0, Lu/aly/fx;

    const-string v1, "lng"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->h:Lu/aly/fx;

    .line 37
    new-instance v0, Lu/aly/fx;

    const-string v1, "ts"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->i:Lu/aly/fx;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sput-object v0, Lu/aly/cf;->j:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/ch;

    invoke-direct {v2, v3}, Lu/aly/ch;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/cf;->j:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/cj;

    invoke-direct {v2, v3}, Lu/aly/cj;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ck;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 121
    sget-object v1, Lu/aly/ck;->a:Lu/aly/ck;

    new-instance v2, Lu/aly/fo;

    const-string v3, "lat"

    .line 122
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v6}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lu/aly/ck;->b:Lu/aly/ck;

    new-instance v2, Lu/aly/fo;

    const-string v3, "lng"

    .line 124
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v6}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/ck;->c:Lu/aly/ck;

    new-instance v2, Lu/aly/fo;

    const-string v3, "ts"

    .line 126
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v7}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/cf;->e:Ljava/util/Map;

    .line 128
    const-class v0, Lu/aly/cf;

    sget-object v1, Lu/aly/cf;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/cf;->d:B

    .line 132
    return-void
.end method

.method public constructor <init>(DDJ)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lu/aly/cf;-><init>()V

    .line 140
    iput-wide p1, p0, Lu/aly/cf;->a:D

    .line 141
    invoke-virtual {p0}, Lu/aly/cf;->a()V

    .line 142
    iput-wide p3, p0, Lu/aly/cf;->b:D

    .line 143
    invoke-virtual {p0}, Lu/aly/cf;->b()V

    .line 144
    iput-wide p5, p0, Lu/aly/cf;->c:J

    .line 145
    invoke-virtual {p0}, Lu/aly/cf;->c()V

    .line 146
    return-void
.end method

.method public static d()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method static synthetic e()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/cf;->f:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic f()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/cf;->g:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic g()Lu/aly/fx;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/cf;->h:Lu/aly/fx;

    return-object v0
.end method

.method static synthetic h()Lu/aly/fx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/cf;->i:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 192
    iget-byte v0, p0, Lu/aly/cf;->d:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 192
    iput-byte v0, p0, Lu/aly/cf;->d:B

    .line 193
    return-void
.end method

.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lu/aly/cf;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 247
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 215
    iget-byte v0, p0, Lu/aly/cf;->d:B

    .line 2137
    or-int/lit8 v0, v0, 0x2

    .line 2128
    int-to-byte v0, v0

    .line 215
    iput-byte v0, p0, Lu/aly/cf;->d:B

    .line 216
    return-void
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lu/aly/cf;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 251
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 238
    iget-byte v0, p0, Lu/aly/cf;->d:B

    .line 3137
    or-int/lit8 v0, v0, 0x4

    .line 3128
    int-to-byte v0, v0

    .line 238
    iput-byte v0, p0, Lu/aly/cf;->d:B

    .line 239
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    const-string v1, "lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-wide v2, p0, Lu/aly/cf;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-wide v2, p0, Lu/aly/cf;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-wide v2, p0, Lu/aly/cf;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
