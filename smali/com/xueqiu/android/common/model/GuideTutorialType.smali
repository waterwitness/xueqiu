.class public final enum Lcom/xueqiu/android/common/model/GuideTutorialType;
.super Ljava/lang/Enum;
.source "GuideTutorialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/common/model/GuideTutorialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/common/model/GuideTutorialType;

.field public static final enum CUBE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

.field public static final enum PAY_ASK_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

.field public static final enum SHARE_COMMENT_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

.field public static final enum TRADE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/xueqiu/android/common/model/GuideTutorialType;

    const-string v1, "CUBE_FIRST_IN"

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/GuideTutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->CUBE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    .line 17
    new-instance v0, Lcom/xueqiu/android/common/model/GuideTutorialType;

    const-string v1, "TRADE_FIRST_IN"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/common/model/GuideTutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->TRADE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    .line 18
    new-instance v0, Lcom/xueqiu/android/common/model/GuideTutorialType;

    const-string v1, "PAY_ASK_FIRST_IN"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/common/model/GuideTutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->PAY_ASK_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    .line 19
    new-instance v0, Lcom/xueqiu/android/common/model/GuideTutorialType;

    const-string v1, "SHARE_COMMENT_FIRST_IN"

    invoke-direct {v0, v1, v5}, Lcom/xueqiu/android/common/model/GuideTutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->SHARE_COMMENT_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xueqiu/android/common/model/GuideTutorialType;

    sget-object v1, Lcom/xueqiu/android/common/model/GuideTutorialType;->CUBE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xueqiu/android/common/model/GuideTutorialType;->TRADE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/common/model/GuideTutorialType;->PAY_ASK_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/common/model/GuideTutorialType;->SHARE_COMMENT_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->$VALUES:[Lcom/xueqiu/android/common/model/GuideTutorialType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/common/model/GuideTutorialType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/GuideTutorialType;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/common/model/GuideTutorialType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->$VALUES:[Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0}, [Lcom/xueqiu/android/common/model/GuideTutorialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/common/model/GuideTutorialType;

    return-object v0
.end method


# virtual methods
.method public final layoutRes()I
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType$1;->$SwitchMap$com$xueqiu$android$common$model$GuideTutorialType:[I

    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/GuideTutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 38
    :pswitch_0
    const v0, 0x7f0300f7

    goto :goto_0

    .line 40
    :pswitch_1
    const v0, 0x7f0301ea

    goto :goto_0

    .line 42
    :pswitch_2
    const v0, 0x7f030087

    goto :goto_0

    .line 44
    :pswitch_3
    const v0, 0x7f03009a

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final storeKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType$1;->$SwitchMap$com$xueqiu$android$common$model$GuideTutorialType:[I

    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/GuideTutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const-string v0, ""

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    const-string v0, "guide_tip_type_cube_first_in"

    goto :goto_0

    .line 26
    :pswitch_1
    const-string v0, "guide_tip_type_trade_first_in"

    goto :goto_0

    .line 28
    :pswitch_2
    const-string v0, "pay_first_in"

    goto :goto_0

    .line 30
    :pswitch_3
    const-string v0, "share_comment_first_in"

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
