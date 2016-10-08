.class public final enum Lcom/xueqiu/android/cube/model/Rebalancing$Status;
.super Ljava/lang/Enum;
.source "Rebalancing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/cube/model/Rebalancing$Status;

.field public static final enum CANCELED:Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canceled"
    .end annotation
.end field

.field public static final enum FAILED:Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failed"
    .end annotation
.end field

.field public static final enum PENDING:Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pending"
    .end annotation
.end field

.field public static final enum SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/cube/model/Rebalancing$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->PENDING:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    .line 28
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/cube/model/Rebalancing$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    .line 30
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/cube/model/Rebalancing$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->FAILED:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    .line 32
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/xueqiu/android/cube/model/Rebalancing$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->CANCELED:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->PENDING:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->FAILED:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->CANCELED:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->$VALUES:[Lcom/xueqiu/android/cube/model/Rebalancing$Status;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->$VALUES:[Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    invoke-virtual {v0}, [Lcom/xueqiu/android/cube/model/Rebalancing$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    return-object v0
.end method


# virtual methods
.method public final description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$2;->$SwitchMap$com$xueqiu$android$cube$model$Rebalancing$Status:[I

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    const-string v0, "\u5df2\u53d6\u6d88"

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    const-string v0, "\u5f85\u6210\u4ea4"

    goto :goto_0

    .line 40
    :pswitch_1
    const-string v0, "\u5df2\u6210\u4ea4"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v0, "\u672a\u6210\u4ea4"

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
