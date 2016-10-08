.class public final enum Lcom/xueqiu/android/cube/model/OrderStatus;
.super Ljava/lang/Enum;
.source "OrderStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/cube/model/OrderStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/cube/model/OrderStatus;

.field public static final enum COMPLETE:Lcom/xueqiu/android/cube/model/OrderStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "complete"
    .end annotation
.end field

.field public static final enum FAILED:Lcom/xueqiu/android/cube/model/OrderStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failed"
    .end annotation
.end field

.field public static final enum NEW:Lcom/xueqiu/android/cube/model/OrderStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/xueqiu/android/cube/model/OrderStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/cube/model/OrderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/OrderStatus;->COMPLETE:Lcom/xueqiu/android/cube/model/OrderStatus;

    .line 11
    new-instance v0, Lcom/xueqiu/android/cube/model/OrderStatus;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/cube/model/OrderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/OrderStatus;->NEW:Lcom/xueqiu/android/cube/model/OrderStatus;

    .line 13
    new-instance v0, Lcom/xueqiu/android/cube/model/OrderStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/cube/model/OrderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/OrderStatus;->FAILED:Lcom/xueqiu/android/cube/model/OrderStatus;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xueqiu/android/cube/model/OrderStatus;

    sget-object v1, Lcom/xueqiu/android/cube/model/OrderStatus;->COMPLETE:Lcom/xueqiu/android/cube/model/OrderStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xueqiu/android/cube/model/OrderStatus;->NEW:Lcom/xueqiu/android/cube/model/OrderStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/cube/model/OrderStatus;->FAILED:Lcom/xueqiu/android/cube/model/OrderStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xueqiu/android/cube/model/OrderStatus;->$VALUES:[Lcom/xueqiu/android/cube/model/OrderStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/OrderStatus;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/xueqiu/android/cube/model/OrderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/OrderStatus;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/cube/model/OrderStatus;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/xueqiu/android/cube/model/OrderStatus;->$VALUES:[Lcom/xueqiu/android/cube/model/OrderStatus;

    invoke-virtual {v0}, [Lcom/xueqiu/android/cube/model/OrderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/cube/model/OrderStatus;

    return-object v0
.end method
