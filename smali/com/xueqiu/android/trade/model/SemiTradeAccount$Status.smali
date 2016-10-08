.class public final enum Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
.super Ljava/lang/Enum;
.source "SemiTradeAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

.field public static final enum BOUND:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BOUND"
    .end annotation
.end field

.field public static final enum EXPIRED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EXPIRED"
    .end annotation
.end field

.field public static final enum PASSED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PASSED"
    .end annotation
.end field

.field public static final enum PENDING:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PENDING"
    .end annotation
.end field

.field public static final enum REJECTED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "REJECTED"
    .end annotation
.end field

.field public static final enum SUCCESS:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUCCESS"
    .end annotation
.end field

.field public static final enum UNDONE:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNDONE"
    .end annotation
.end field

.field public static final enum UPDATED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UPDATED"
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

    .line 117
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    const-string v1, "UNDONE"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->UNDONE:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 119
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PENDING:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 121
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v5}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->REJECTED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 123
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    const-string v1, "PASSED"

    invoke-direct {v0, v1, v6}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PASSED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 125
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    const-string v1, "BOUND"

    invoke-direct {v0, v1, v7}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->BOUND:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 127
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    const-string v1, "UPDATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->UPDATED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 129
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    const-string v1, "EXPIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->EXPIRED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 131
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->SUCCESS:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    sget-object v1, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->UNDONE:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PENDING:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->REJECTED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PASSED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->BOUND:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->UPDATED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->EXPIRED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->SUCCESS:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->$VALUES:[Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static safeValueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .locals 1

    .prologue
    .line 136
    :try_start_0
    invoke-static {p0}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->UNDONE:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->$VALUES:[Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    invoke-virtual {v0}, [Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    return-object v0
.end method
