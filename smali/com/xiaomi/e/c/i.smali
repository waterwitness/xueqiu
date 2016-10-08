.class public final enum Lcom/xiaomi/e/c/i;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/e/c/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/e/c/i;

.field public static final enum b:Lcom/xiaomi/e/c/i;

.field public static final enum c:Lcom/xiaomi/e/c/i;

.field public static final enum d:Lcom/xiaomi/e/c/i;

.field public static final enum e:Lcom/xiaomi/e/c/i;

.field public static final enum f:Lcom/xiaomi/e/c/i;

.field public static final enum g:Lcom/xiaomi/e/c/i;

.field public static final enum h:Lcom/xiaomi/e/c/i;

.field private static final synthetic i:[Lcom/xiaomi/e/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/e/c/i;

    const-string v1, "available"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/i;->a:Lcom/xiaomi/e/c/i;

    new-instance v0, Lcom/xiaomi/e/c/i;

    const-string v1, "unavailable"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/i;->b:Lcom/xiaomi/e/c/i;

    new-instance v0, Lcom/xiaomi/e/c/i;

    const-string v1, "subscribe"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/i;->c:Lcom/xiaomi/e/c/i;

    new-instance v0, Lcom/xiaomi/e/c/i;

    const-string v1, "subscribed"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/i;->d:Lcom/xiaomi/e/c/i;

    new-instance v0, Lcom/xiaomi/e/c/i;

    const-string v1, "unsubscribe"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/i;->e:Lcom/xiaomi/e/c/i;

    new-instance v0, Lcom/xiaomi/e/c/i;

    const-string v1, "unsubscribed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/i;->f:Lcom/xiaomi/e/c/i;

    new-instance v0, Lcom/xiaomi/e/c/i;

    const-string v1, "error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/i;->g:Lcom/xiaomi/e/c/i;

    new-instance v0, Lcom/xiaomi/e/c/i;

    const-string v1, "probe"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/i;->h:Lcom/xiaomi/e/c/i;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xiaomi/e/c/i;

    sget-object v1, Lcom/xiaomi/e/c/i;->a:Lcom/xiaomi/e/c/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/e/c/i;->b:Lcom/xiaomi/e/c/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/e/c/i;->c:Lcom/xiaomi/e/c/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/e/c/i;->d:Lcom/xiaomi/e/c/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/e/c/i;->e:Lcom/xiaomi/e/c/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/e/c/i;->f:Lcom/xiaomi/e/c/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/e/c/i;->g:Lcom/xiaomi/e/c/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/e/c/i;->h:Lcom/xiaomi/e/c/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/e/c/i;->i:[Lcom/xiaomi/e/c/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/e/c/i;
    .locals 1

    const-class v0, Lcom/xiaomi/e/c/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/e/c/i;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/e/c/i;
    .locals 1

    sget-object v0, Lcom/xiaomi/e/c/i;->i:[Lcom/xiaomi/e/c/i;

    invoke-virtual {v0}, [Lcom/xiaomi/e/c/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/e/c/i;

    return-object v0
.end method
