.class public Lu/aly/i;
.super Ljava/lang/Object;
.source "ActivateMsg.java"

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
        "Lu/aly/i;",
        "Lu/aly/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/o;",
            "Lu/aly/fo;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/gg;

.field private static final e:Lu/aly/fx;

.field private static final f:Ljava/util/Map;
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

.field b:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lu/aly/gg;

    const-string v1, "ActivateMsg"

    invoke-direct {v0, v1}, Lu/aly/gg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/i;->d:Lu/aly/gg;

    .line 35
    new-instance v0, Lu/aly/fx;

    const-string v1, "ts"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/fx;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/i;->e:Lu/aly/fx;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    sput-object v0, Lu/aly/i;->f:Ljava/util/Map;

    const-class v1, Lu/aly/gk;

    new-instance v2, Lu/aly/l;

    invoke-direct {v2, v3}, Lu/aly/l;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/i;->f:Ljava/util/Map;

    const-class v1, Lu/aly/gl;

    new-instance v2, Lu/aly/n;

    invoke-direct {v2, v3}, Lu/aly/n;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/o;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 109
    sget-object v1, Lu/aly/o;->a:Lu/aly/o;

    new-instance v2, Lu/aly/fo;

    const-string v3, "ts"

    .line 110
    new-instance v4, Lu/aly/fp;

    invoke-direct {v4, v6}, Lu/aly/fp;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/fo;-><init>(Ljava/lang/String;BLu/aly/fp;)V

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/i;->c:Ljava/util/Map;

    .line 112
    const-class v0, Lu/aly/i;

    sget-object v1, Lu/aly/i;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/fo;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/i;->b:B

    .line 116
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lu/aly/i;-><init>()V

    .line 122
    iput-wide p1, p0, Lu/aly/i;->a:J

    .line 123
    invoke-virtual {p0}, Lu/aly/i;->a()V

    .line 124
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method static synthetic c()Lu/aly/gg;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/i;->d:Lu/aly/gg;

    return-object v0
.end method

.method static synthetic d()Lu/aly/fx;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/i;->e:Lu/aly/fx;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 164
    iget-byte v0, p0, Lu/aly/i;->b:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 164
    iput-byte v0, p0, Lu/aly/i;->b:B

    .line 165
    return-void
.end method

.method public final a(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lu/aly/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->a(Lu/aly/ga;Lu/aly/fa;)V

    .line 173
    return-void
.end method

.method public final b(Lu/aly/ga;)V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lu/aly/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/ga;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/gj;

    invoke-interface {v0}, Lu/aly/gj;->a()Lu/aly/gi;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/gi;->b(Lu/aly/ga;Lu/aly/fa;)V

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivateMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-wide v2, p0, Lu/aly/i;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
