.class public final enum Lcom/xiaomi/e/c/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/e/c/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/e/c/h;

.field public static final enum b:Lcom/xiaomi/e/c/h;

.field public static final enum c:Lcom/xiaomi/e/c/h;

.field public static final enum d:Lcom/xiaomi/e/c/h;

.field public static final enum e:Lcom/xiaomi/e/c/h;

.field private static final synthetic f:[Lcom/xiaomi/e/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/e/c/h;

    const-string v1, "chat"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/e/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/h;->a:Lcom/xiaomi/e/c/h;

    new-instance v0, Lcom/xiaomi/e/c/h;

    const-string v1, "available"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/e/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/h;->b:Lcom/xiaomi/e/c/h;

    new-instance v0, Lcom/xiaomi/e/c/h;

    const-string v1, "away"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/e/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/h;->c:Lcom/xiaomi/e/c/h;

    new-instance v0, Lcom/xiaomi/e/c/h;

    const-string v1, "xa"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/e/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/h;->d:Lcom/xiaomi/e/c/h;

    new-instance v0, Lcom/xiaomi/e/c/h;

    const-string v1, "dnd"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/e/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/e/c/h;->e:Lcom/xiaomi/e/c/h;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/e/c/h;

    sget-object v1, Lcom/xiaomi/e/c/h;->a:Lcom/xiaomi/e/c/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/e/c/h;->b:Lcom/xiaomi/e/c/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/e/c/h;->c:Lcom/xiaomi/e/c/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/e/c/h;->d:Lcom/xiaomi/e/c/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/e/c/h;->e:Lcom/xiaomi/e/c/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/e/c/h;->f:[Lcom/xiaomi/e/c/h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/e/c/h;
    .locals 1

    const-class v0, Lcom/xiaomi/e/c/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/e/c/h;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/e/c/h;
    .locals 1

    sget-object v0, Lcom/xiaomi/e/c/h;->f:[Lcom/xiaomi/e/c/h;

    invoke-virtual {v0}, [Lcom/xiaomi/e/c/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/e/c/h;

    return-object v0
.end method
