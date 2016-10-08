.class public final enum Lcom/xueqiu/android/community/model/UserVerifyType;
.super Ljava/lang/Enum;
.source "UserVerifyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/community/model/UserVerifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/community/model/UserVerifyType;

.field public static final enum ADVISER:Lcom/xueqiu/android/community/model/UserVerifyType;

.field public static final enum ALALYST:Lcom/xueqiu/android/community/model/UserVerifyType;

.field public static final enum COMPANY:Lcom/xueqiu/android/community/model/UserVerifyType;

.field public static final enum NO_VERIFY:Lcom/xueqiu/android/community/model/UserVerifyType;

.field public static final enum OTHERS:Lcom/xueqiu/android/community/model/UserVerifyType;

.field public static final enum STAFF:Lcom/xueqiu/android/community/model/UserVerifyType;

.field public static final enum TRADING:Lcom/xueqiu/android/community/model/UserVerifyType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    const-string v1, "NO_VERIFY"

    invoke-direct {v0, v1, v4, v4}, Lcom/xueqiu/android/community/model/UserVerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->NO_VERIFY:Lcom/xueqiu/android/community/model/UserVerifyType;

    new-instance v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v5, v5}, Lcom/xueqiu/android/community/model/UserVerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->OTHERS:Lcom/xueqiu/android/community/model/UserVerifyType;

    new-instance v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    const-string v1, "ALALYST"

    invoke-direct {v0, v1, v6, v6}, Lcom/xueqiu/android/community/model/UserVerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->ALALYST:Lcom/xueqiu/android/community/model/UserVerifyType;

    new-instance v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    const-string v1, "COMPANY"

    invoke-direct {v0, v1, v7, v7}, Lcom/xueqiu/android/community/model/UserVerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->COMPANY:Lcom/xueqiu/android/community/model/UserVerifyType;

    new-instance v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    const-string v1, "STAFF"

    invoke-direct {v0, v1, v8, v8}, Lcom/xueqiu/android/community/model/UserVerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->STAFF:Lcom/xueqiu/android/community/model/UserVerifyType;

    new-instance v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    const-string v1, "ADVISER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/community/model/UserVerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->ADVISER:Lcom/xueqiu/android/community/model/UserVerifyType;

    new-instance v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    const-string v1, "TRADING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/community/model/UserVerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->TRADING:Lcom/xueqiu/android/community/model/UserVerifyType;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xueqiu/android/community/model/UserVerifyType;

    sget-object v1, Lcom/xueqiu/android/community/model/UserVerifyType;->NO_VERIFY:Lcom/xueqiu/android/community/model/UserVerifyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/community/model/UserVerifyType;->OTHERS:Lcom/xueqiu/android/community/model/UserVerifyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xueqiu/android/community/model/UserVerifyType;->ALALYST:Lcom/xueqiu/android/community/model/UserVerifyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xueqiu/android/community/model/UserVerifyType;->COMPANY:Lcom/xueqiu/android/community/model/UserVerifyType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xueqiu/android/community/model/UserVerifyType;->STAFF:Lcom/xueqiu/android/community/model/UserVerifyType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xueqiu/android/community/model/UserVerifyType;->ADVISER:Lcom/xueqiu/android/community/model/UserVerifyType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xueqiu/android/community/model/UserVerifyType;->TRADING:Lcom/xueqiu/android/community/model/UserVerifyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->$VALUES:[Lcom/xueqiu/android/community/model/UserVerifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/xueqiu/android/community/model/UserVerifyType;->value:I

    .line 23
    return-void
.end method

.method public static fromValue(I)Lcom/xueqiu/android/community/model/UserVerifyType;
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/xueqiu/android/community/model/UserVerifyType;->values()[Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 27
    iget v4, v0, Lcom/xueqiu/android/community/model/UserVerifyType;->value:I

    if-ne v4, p0, :cond_0

    .line 31
    :goto_1
    return-object v0

    .line 26
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->NO_VERIFY:Lcom/xueqiu/android/community/model/UserVerifyType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/community/model/UserVerifyType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserVerifyType;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/community/model/UserVerifyType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->$VALUES:[Lcom/xueqiu/android/community/model/UserVerifyType;

    invoke-virtual {v0}, [Lcom/xueqiu/android/community/model/UserVerifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/community/model/UserVerifyType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/xueqiu/android/community/model/UserVerifyType;->value:I

    return v0
.end method

.method public final iconResId()I
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/xueqiu/android/community/model/UserVerifyType$1;->$SwitchMap$com$xueqiu$android$community$model$UserVerifyType:[I

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/UserVerifyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    const v0, 0x7f020492

    :goto_0
    return v0

    .line 41
    :pswitch_0
    const v0, 0x7f020490

    goto :goto_0

    .line 43
    :pswitch_1
    const v0, 0x7f020491

    goto :goto_0

    .line 45
    :pswitch_2
    const v0, 0x7f020281

    goto :goto_0

    .line 47
    :pswitch_3
    const v0, 0x7f02048e

    goto :goto_0

    .line 49
    :pswitch_4
    const v0, 0x7f020493

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
