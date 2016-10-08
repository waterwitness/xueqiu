.class public Lcom/xueqiu/android/common/setting/SettingsPushActivity;
.super Lcom/xueqiu/android/common/b;
.source "SettingsPushActivity.java"


# static fields
.field private static final A:[Ljava/lang/String;

.field private static final B:[Ljava/lang/String;


# instance fields
.field private C:Lcom/xueqiu/android/view/wheel/WheelView;

.field private D:Lcom/xueqiu/android/view/wheel/WheelView;

.field private E:Landroid/view/View;

.field protected j:Landroid/widget/CheckBox;

.field protected k:Landroid/widget/CheckBox;

.field protected p:Landroid/widget/CheckBox;

.field protected q:Landroid/widget/CheckBox;

.field protected r:Landroid/widget/CheckBox;

.field protected s:Landroid/widget/CheckBox;

.field protected t:Landroid/widget/CheckBox;

.field protected u:Landroid/widget/CheckBox;

.field protected v:Landroid/widget/CheckBox;

.field protected w:Landroid/widget/CheckBox;

.field protected x:Landroid/widget/TextView;

.field protected y:Landroid/content/SharedPreferences;

.field protected z:Lcom/xueqiu/android/common/widget/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0:00"

    aput-object v1, v0, v3

    const-string v1, "1:00"

    aput-object v1, v0, v4

    const-string v1, "2:00"

    aput-object v1, v0, v5

    const-string v1, "3:00"

    aput-object v1, v0, v6

    const-string v1, "4:00"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5:00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6:00"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7:00"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8:00"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9:00"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10:00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11:00"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12:00"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13:00"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14:00"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15:00"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16:00"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17:00"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18:00"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19:00"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20:00"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21:00"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22:00"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23:00"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->A:[Ljava/lang/String;

    .line 39
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1:00"

    aput-object v1, v0, v3

    const-string v1, "2:00"

    aput-object v1, v0, v4

    const-string v1, "3:00"

    aput-object v1, v0, v5

    const-string v1, "4:00"

    aput-object v1, v0, v6

    const-string v1, "5:00"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "6:00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7:00"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8:00"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9:00"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10:00"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11:00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12:00"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "13:00"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "14:00"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "15:00"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "16:00"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "17:00"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "18:00"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "19:00"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "20:00"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "21:00"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "22:00"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "23:00"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "24:00"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->C:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 43
    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->D:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 310
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->E:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3192
    const/4 v0, 0x0

    .line 3193
    const v3, 0x7f0701e5

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3194
    const v0, 0x7f07036b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3213
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->z:Lcom/xueqiu/android/common/widget/ac;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->c()Landroid/support/v4/a/q;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/common/widget/ac;->a(Landroid/support/v4/a/q;Ljava/lang/String;)V

    .line 3215
    const v3, 0x7f0701eb

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3216
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3217
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3218
    new-array v4, v6, [Ljava/lang/String;

    const v3, 0x7f070363

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const v3, 0x7f070368

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    new-array v3, v6, [Ljava/lang/String;

    aget-object v5, v0, v2

    aput-object v5, v3, v2

    aget-object v0, v0, v1

    move-object v2, v3

    .line 3223
    :goto_1
    aput-object v0, v2, v1

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3289
    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3, v1}, Lcom/xueqiu/android/base/b/ai;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 35
    return-void

    .line 3195
    :cond_1
    const v3, 0x7f0701e3

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3196
    const v0, 0x7f070364

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3197
    :cond_2
    const v3, 0x7f0701e7

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3198
    const v0, 0x7f07036d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3199
    :cond_3
    const v3, 0x7f0701ea

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3200
    const v0, 0x7f070370

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3201
    :cond_4
    const v3, 0x7f0701e8

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3202
    const v0, 0x7f07036e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3203
    :cond_5
    const v3, 0x7f0701e9

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3204
    const v0, 0x7f07036f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3205
    :cond_6
    const v3, 0x7f0701ec

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3206
    const v0, 0x7f070371

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3207
    :cond_7
    const v3, 0x7f0701e6

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3208
    const v0, 0x7f07036c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3209
    :cond_8
    const v3, 0x7f0701e4

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3210
    const v0, 0x7f07036a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3222
    :cond_9
    new-array v3, v1, [Ljava/lang/String;

    aput-object v0, v3, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 3223
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "1"

    move-object v4, v3

    move-object v3, v1

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_1

    :cond_a
    const-string v0, "0"

    move-object v4, v3

    move-object v3, v1

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)Lcom/xueqiu/android/view/wheel/WheelView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->C:Lcom/xueqiu/android/view/wheel/WheelView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 282
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 283
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 284
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->x:Landroid/widget/TextView;

    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->A:[Ljava/lang/String;

    sget-object v6, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->A:[Ljava/lang/String;

    array-length v6, v6

    rem-int/2addr v1, v6

    aget-object v1, v5, v1

    aput-object v1, v4, v7

    sget-object v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->B:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->B:[Ljava/lang/String;

    array-length v5, v5

    rem-int/2addr v0, v5

    aget-object v0, v1, v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)Lcom/xueqiu/android/view/wheel/WheelView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->D:Lcom/xueqiu/android/view/wheel/WheelView;

    return-object v0
.end method


# virtual methods
.method public changeReceivePeriod(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x18

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 230
    const v0, 0x7f0e035b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/view/wheel/WheelView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->C:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 231
    const v0, 0x7f0e035d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/view/wheel/WheelView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->D:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 233
    new-instance v0, Lcom/xueqiu/android/common/setting/b;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/common/setting/b;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Landroid/content/Context;)V

    .line 234
    sget-object v2, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->A:[Ljava/lang/String;

    .line 1323
    iput-object v2, v0, Lcom/xueqiu/android/common/setting/b;->a:[Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->C:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->setViewAdapter(Lcom/xueqiu/android/view/wheel/a/c;)V

    .line 237
    new-instance v0, Lcom/xueqiu/android/common/setting/b;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/common/setting/b;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Landroid/content/Context;)V

    .line 238
    sget-object v2, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->B:[Ljava/lang/String;

    .line 2323
    iput-object v2, v0, Lcom/xueqiu/android/common/setting/b;->a:[Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->D:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->setViewAdapter(Lcom/xueqiu/android/view/wheel/a/c;)V

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->C:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/view/wheel/WheelView;->setVisibleItems(I)V

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->D:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/view/wheel/WheelView;->setVisibleItems(I)V

    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701eb

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0702dc

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 247
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 248
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    if-eq v2, v5, :cond_0

    if-nez v2, :cond_2

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->C:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v2, v4}, Lcom/xueqiu/android/view/wheel/WheelView;->setCurrentItem(I)V

    .line 256
    :goto_0
    if-eq v0, v5, :cond_1

    if-nez v0, :cond_3

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->D:Lcom/xueqiu/android/view/wheel/WheelView;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/view/wheel/WheelView;->setCurrentItem(I)V

    .line 262
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070070

    new-instance v3, Lcom/xueqiu/android/common/setting/SettingsPushActivity$4;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$4;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    .line 263
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/common/setting/SettingsPushActivity$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$3;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    .line 269
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 279
    return-void

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->C:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/view/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->D:Lcom/xueqiu/android/view/wheel/WheelView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0701e5

    const/4 v3, 0x1

    .line 75
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 76
    const v1, 0x7f0702a9

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(I)V

    .line 77
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    .line 78
    invoke-static {}, Lcom/xueqiu/android/common/widget/ac;->u()Lcom/xueqiu/android/common/widget/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->z:Lcom/xueqiu/android/common/widget/ac;

    .line 79
    const v0, 0x7f0300e3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->setContentView(I)V

    .line 80
    const v0, 0x7f0e0372

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->E:Landroid/view/View;

    .line 81
    const v0, 0x7f0e0371

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->j:Landroid/widget/CheckBox;

    .line 82
    const v0, 0x7f0e0375

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->k:Landroid/widget/CheckBox;

    .line 83
    const v0, 0x7f0e0376

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->p:Landroid/widget/CheckBox;

    .line 84
    const v0, 0x7f0e0377

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->q:Landroid/widget/CheckBox;

    .line 85
    const v0, 0x7f0e0378

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->r:Landroid/widget/CheckBox;

    .line 86
    const v0, 0x7f0e0379

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->s:Landroid/widget/CheckBox;

    .line 87
    const v0, 0x7f0e037b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->t:Landroid/widget/CheckBox;

    .line 88
    const v0, 0x7f0e037d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->u:Landroid/widget/CheckBox;

    .line 89
    const v0, 0x7f0e037e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->v:Landroid/widget/CheckBox;

    .line 90
    const v0, 0x7f0e037c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->w:Landroid/widget/CheckBox;

    .line 91
    const v0, 0x7f0e0374

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->x:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->j:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->j:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$1;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->E:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->k:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701e2

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->k:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$6;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701e7

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->p:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$7;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->q:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701ea

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->q:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$8;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->r:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701e3

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->r:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$9;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->s:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701e8

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->s:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$10;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->t:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701e9

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->t:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$11;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->u:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701ec

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->u:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$12;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->v:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701e6

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->v:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$13;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->w:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v2, 0x7f0701e4

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->w:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity$2;-><init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    const v1, 0x7f0701eb

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0702dc

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->b(Ljava/lang/String;)V

    .line 189
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
