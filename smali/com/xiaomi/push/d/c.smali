.class public final enum Lcom/xiaomi/push/d/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/push/d/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/d/c;

.field public static final enum b:Lcom/xiaomi/push/d/c;

.field public static final enum c:Lcom/xiaomi/push/d/c;

.field public static final enum d:Lcom/xiaomi/push/d/c;

.field public static final enum e:Lcom/xiaomi/push/d/c;

.field public static final enum f:Lcom/xiaomi/push/d/c;

.field public static final enum g:Lcom/xiaomi/push/d/c;

.field public static final enum h:Lcom/xiaomi/push/d/c;

.field public static final enum i:Lcom/xiaomi/push/d/c;

.field public static final enum j:Lcom/xiaomi/push/d/c;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lcom/xiaomi/push/d/c;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 0
    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "CHID"

    const/4 v2, 0x0

    const-string v3, "chid"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->a:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "TYPE"

    const-string v2, "type"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->b:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "VALUE"

    const-string v2, "value"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->c:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "CONNPT"

    const-string v2, "connpt"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->d:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "HOST"

    const-string v2, "host"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->e:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "SUBVALUE"

    const/4 v2, 0x6

    const-string v3, "subvalue"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->f:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "ANNOTATION"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "annotation"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->g:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "USER"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "user"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->h:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "TIME"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "time"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->i:Lcom/xiaomi/push/d/c;

    new-instance v0, Lcom/xiaomi/push/d/c;

    const-string v1, "CLIENT_IP"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "clientIp"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/d/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/d/c;->j:Lcom/xiaomi/push/d/c;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaomi/push/d/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/push/d/c;->a:Lcom/xiaomi/push/d/c;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/push/d/c;->b:Lcom/xiaomi/push/d/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/push/d/c;->c:Lcom/xiaomi/push/d/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/push/d/c;->d:Lcom/xiaomi/push/d/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/push/d/c;->e:Lcom/xiaomi/push/d/c;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/push/d/c;->f:Lcom/xiaomi/push/d/c;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/push/d/c;->g:Lcom/xiaomi/push/d/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/push/d/c;->h:Lcom/xiaomi/push/d/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/push/d/c;->i:Lcom/xiaomi/push/d/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/push/d/c;->j:Lcom/xiaomi/push/d/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/d/c;->n:[Lcom/xiaomi/push/d/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/push/d/c;->k:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/push/d/c;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/d/c;

    sget-object v2, Lcom/xiaomi/push/d/c;->k:Ljava/util/Map;

    .line 1000
    iget-object v3, v0, Lcom/xiaomi/push/d/c;->m:Ljava/lang/String;

    .line 0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/xiaomi/push/d/c;->l:S

    iput-object p4, p0, Lcom/xiaomi/push/d/c;->m:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/d/c;
    .locals 1

    const-class v0, Lcom/xiaomi/push/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/d/c;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/push/d/c;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/d/c;->n:[Lcom/xiaomi/push/d/c;

    invoke-virtual {v0}, [Lcom/xiaomi/push/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/d/c;

    return-object v0
.end method
