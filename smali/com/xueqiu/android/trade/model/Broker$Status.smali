.class public final enum Lcom/xueqiu/android/trade/model/Broker$Status;
.super Ljava/lang/Enum;
.source "Broker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/trade/model/Broker$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/trade/model/Broker$Status;

.field public static final enum BOUND:Lcom/xueqiu/android/trade/model/Broker$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BOUND"
    .end annotation
.end field

.field public static final enum PASSED:Lcom/xueqiu/android/trade/model/Broker$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PASSED"
    .end annotation
.end field

.field public static final enum PENDING:Lcom/xueqiu/android/trade/model/Broker$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PENDING"
    .end annotation
.end field

.field public static final enum REJECTED:Lcom/xueqiu/android/trade/model/Broker$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "REJECTED"
    .end annotation
.end field

.field public static final enum SUCCESS:Lcom/xueqiu/android/trade/model/Broker$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUCCESS"
    .end annotation
.end field

.field public static final enum UNDONE:Lcom/xueqiu/android/trade/model/Broker$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNDONE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 407
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker$Status;

    const-string v1, "UNDONE"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/trade/model/Broker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker$Status;->UNDONE:Lcom/xueqiu/android/trade/model/Broker$Status;

    .line 409
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/trade/model/Broker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker$Status;->PENDING:Lcom/xueqiu/android/trade/model/Broker$Status;

    .line 411
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker$Status;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v5}, Lcom/xueqiu/android/trade/model/Broker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker$Status;->REJECTED:Lcom/xueqiu/android/trade/model/Broker$Status;

    .line 413
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker$Status;

    const-string v1, "PASSED"

    invoke-direct {v0, v1, v6}, Lcom/xueqiu/android/trade/model/Broker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker$Status;->PASSED:Lcom/xueqiu/android/trade/model/Broker$Status;

    .line 415
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker$Status;

    const-string v1, "BOUND"

    invoke-direct {v0, v1, v7}, Lcom/xueqiu/android/trade/model/Broker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker$Status;->BOUND:Lcom/xueqiu/android/trade/model/Broker$Status;

    .line 417
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/trade/model/Broker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker$Status;->SUCCESS:Lcom/xueqiu/android/trade/model/Broker$Status;

    .line 406
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xueqiu/android/trade/model/Broker$Status;

    sget-object v1, Lcom/xueqiu/android/trade/model/Broker$Status;->UNDONE:Lcom/xueqiu/android/trade/model/Broker$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/trade/model/Broker$Status;->PENDING:Lcom/xueqiu/android/trade/model/Broker$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/trade/model/Broker$Status;->REJECTED:Lcom/xueqiu/android/trade/model/Broker$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xueqiu/android/trade/model/Broker$Status;->PASSED:Lcom/xueqiu/android/trade/model/Broker$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xueqiu/android/trade/model/Broker$Status;->BOUND:Lcom/xueqiu/android/trade/model/Broker$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xueqiu/android/trade/model/Broker$Status;->SUCCESS:Lcom/xueqiu/android/trade/model/Broker$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker$Status;->$VALUES:[Lcom/xueqiu/android/trade/model/Broker$Status;

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
    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/Broker$Status;
    .locals 1

    .prologue
    .line 406
    const-class v0, Lcom/xueqiu/android/trade/model/Broker$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/Broker$Status;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/trade/model/Broker$Status;
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/xueqiu/android/trade/model/Broker$Status;->$VALUES:[Lcom/xueqiu/android/trade/model/Broker$Status;

    invoke-virtual {v0}, [Lcom/xueqiu/android/trade/model/Broker$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/trade/model/Broker$Status;

    return-object v0
.end method
