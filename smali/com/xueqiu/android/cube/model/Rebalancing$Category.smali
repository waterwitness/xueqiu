.class public final enum Lcom/xueqiu/android/cube/model/Rebalancing$Category;
.super Ljava/lang/Enum;
.source "Rebalancing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/cube/model/Rebalancing$Category;

.field public static final enum SALES_UPGRADE:Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sales_upgrade"
    .end annotation
.end field

.field public static final enum SYS_REBALANCING:Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sys_rebalancing"
    .end annotation
.end field

.field public static final enum SYS_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sys_vol_rb"
    .end annotation
.end field

.field public static final enum USER_REBALANCING:Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_rebalancing"
    .end annotation
.end field

.field public static final enum USER_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_vol_rb"
    .end annotation
.end field

.field public static final enum VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vol_rb"
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

    .line 50
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    const-string v1, "USER_REBALANCING"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/cube/model/Rebalancing$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->USER_REBALANCING:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    .line 52
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    const-string v1, "SYS_REBALANCING"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/cube/model/Rebalancing$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_REBALANCING:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    .line 54
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    const-string v1, "USER_VOL_RB"

    invoke-direct {v0, v1, v5}, Lcom/xueqiu/android/cube/model/Rebalancing$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->USER_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    .line 56
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    const-string v1, "SYS_VOL_RB"

    invoke-direct {v0, v1, v6}, Lcom/xueqiu/android/cube/model/Rebalancing$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    .line 58
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    const-string v1, "SALES_UPGRADE"

    invoke-direct {v0, v1, v7}, Lcom/xueqiu/android/cube/model/Rebalancing$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SALES_UPGRADE:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    .line 60
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    const-string v1, "VOL_RB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/cube/model/Rebalancing$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->USER_REBALANCING:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_REBALANCING:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->USER_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SALES_UPGRADE:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->$VALUES:[Lcom/xueqiu/android/cube/model/Rebalancing$Category;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->$VALUES:[Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    invoke-virtual {v0}, [Lcom/xueqiu/android/cube/model/Rebalancing$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    return-object v0
.end method
