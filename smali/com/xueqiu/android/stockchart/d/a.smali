.class public Lcom/xueqiu/android/stockchart/d/a;
.super Landroid/support/v4/a/i;
.source "BaseChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Ljava/lang/String;

.field public aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

.field public aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

.field public aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

.field public aD:Lcom/xueqiu/android/stockchart/view/PankouView;

.field public aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

.field public aF:Lcom/xueqiu/android/stockchart/view/EventView;

.field public aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

.field public aH:Landroid/widget/TextView;

.field public aI:Landroid/widget/TextView;

.field public aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

.field public aK:Landroid/content/res/TypedArray;

.field public aL:Landroid/os/Handler;

.field aM:Z

.field private aN:Z

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:[Ljava/lang/String;

.field private aS:[Ljava/lang/String;

.field private aT:[Ljava/lang/String;

.field private aU:[Ljava/lang/String;

.field private aV:[Ljava/lang/String;

.field private aW:Landroid/widget/LinearLayout;

.field private aX:Landroid/widget/TextView;

.field private aY:Landroid/widget/TextView;

.field private aZ:Landroid/widget/TextView;

.field public ak:Landroid/widget/LinearLayout;

.field public al:Lcom/xueqiu/android/stockchart/b/a;

.field public am:Lcom/xueqiu/android/stockchart/a/b;

.field public an:Ljava/lang/String;

.field public ao:Lcom/xueqiu/android/stockchart/e/h;

.field public ap:Ljava/text/DecimalFormat;

.field public aq:Ljava/lang/String;

.field public ar:Ljava/lang/String;

.field public as:Ljava/lang/String;

.field public at:Ljava/lang/String;

.field public au:Ljava/lang/String;

.field public av:Ljava/lang/String;

.field public aw:[Ljava/lang/String;

.field public ax:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field public ay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field az:Landroid/widget/PopupWindow;

.field public b:Landroid/widget/LinearLayout;

.field private ba:Landroid/widget/TextView;

.field private bb:Landroid/widget/TextView;

.field private bc:Landroid/widget/TextView;

.field private bd:Landroid/widget/LinearLayout;

.field private be:Landroid/widget/TextView;

.field private bf:Landroid/widget/TextView;

.field private bg:Landroid/widget/TextView;

.field private bh:Landroid/widget/TextView;

.field private bi:Landroid/widget/TextView;

.field private bj:Landroid/widget/TextView;

.field private bk:Landroid/widget/TextView;

.field private bl:Landroid/widget/LinearLayout;

.field private bm:Landroid/widget/TextView;

.field private bn:Landroid/widget/TextView;

.field private bo:Landroid/widget/TextView;

.field private bp:I

.field private bq:I

.field private br:Z

.field private bs:F

.field private bt:Ljava/lang/Runnable;

.field public c:Lcom/xueqiu/android/stockchart/a/c;

.field public d:Lcom/xueqiu/android/stockchart/a/a;

.field public e:Lcom/xueqiu/android/stockchart/c/b;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/FrameLayout;

.field public i:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Landroid/support/v4/a/i;-><init>()V

    .line 87
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ap:Ljava/text/DecimalFormat;

    .line 89
    const-string v0, "1d"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    .line 90
    const-string v0, "stock"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    .line 91
    const-string v0, "small"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    .line 92
    const-string v0, "before"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    .line 93
    const-string v0, "volume"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->au:Ljava/lang/String;

    .line 94
    const-string v0, "wudang"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->av:Ljava/lang/String;

    .line 95
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aN:Z

    .line 96
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aO:Z

    .line 97
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aP:Z

    .line 98
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aQ:Z

    .line 100
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1d"

    aput-object v1, v0, v3

    const-string v1, "5d"

    aput-object v1, v0, v4

    const-string v1, "1day"

    aput-object v1, v0, v5

    const-string v1, "1week"

    aput-object v1, v0, v6

    const-string v1, "1month"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "minute"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5206\u65f6"

    aput-object v1, v0, v3

    const-string v1, "\u4e94\u65e5"

    aput-object v1, v0, v4

    const-string v1, "\u65e5K"

    aput-object v1, v0, v5

    const-string v1, "\u5468K"

    aput-object v1, v0, v6

    const-string v1, "\u6708K"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u5206\u949f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aS:[Ljava/lang/String;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1d"

    aput-object v1, v0, v3

    const-string v1, "5d"

    aput-object v1, v0, v4

    const-string v1, "1m"

    aput-object v1, v0, v5

    const-string v1, "6m"

    aput-object v1, v0, v6

    const-string v1, "3y"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "all"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aT:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1day"

    aput-object v1, v0, v3

    const-string v1, "1week"

    aput-object v1, v0, v4

    const-string v1, "1month"

    aput-object v1, v0, v5

    const-string v1, "1minute"

    aput-object v1, v0, v6

    const-string v1, "5m"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "15m"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "30m"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "60m"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aU:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1minute"

    aput-object v1, v0, v3

    const-string v1, "5m"

    aput-object v1, v0, v4

    const-string v1, "15m"

    aput-object v1, v0, v5

    const-string v1, "30m"

    aput-object v1, v0, v6

    const-string v1, "60m"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    .line 105
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "unit5"

    aput-object v1, v0, v3

    const-string v1, "unit"

    aput-object v1, v0, v4

    const-string v1, "seven"

    aput-object v1, v0, v5

    const-string v1, "million"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aV:[Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ax:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ay:Ljava/util/HashMap;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aL:Landroid/os/Handler;

    .line 164
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/d/a;->br:Z

    .line 169
    new-instance v0, Lcom/xueqiu/android/stockchart/d/a$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stockchart/d/a$1;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bt:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/d/a;F)F
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/xueqiu/android/stockchart/d/a;->bs:F

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/d/a;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/xueqiu/android/stockchart/d/a;->bp:I

    return p1
.end method

.method public static a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 1072
    :try_start_0
    const-string v0, "chartlist"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1073
    const-string v1, "chartlist"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 1074
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1075
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonArray;->addAll(Lcom/google/gson/JsonArray;)V

    .line 1076
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->addAll(Lcom/google/gson/JsonArray;)V

    .line 1078
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1079
    const-string v1, "chartlist"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 1083
    :goto_0
    return-object p0

    .line 1082
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/d/a;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bt:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static a(Lcom/google/gson/JsonObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    const/4 v0, 0x5

    move v2, v0

    :goto_0
    if-lez v2, :cond_3

    .line 1148
    new-instance v4, Lcom/xueqiu/android/stockchart/e/g;

    invoke-direct {v4}, Lcom/xueqiu/android/stockchart/e/g;-><init>()V

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\u5356"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29026
    iput-object v0, v4, Lcom/xueqiu/android/stockchart/e/g;->a:Ljava/lang/String;

    .line 1150
    if-nez p0, :cond_0

    move v0, v1

    .line 29034
    :goto_1
    iput v0, v4, Lcom/xueqiu/android/stockchart/e/g;->b:F

    .line 1151
    if-nez p0, :cond_1

    move v0, v1

    .line 29042
    :goto_2
    iput v0, v4, Lcom/xueqiu/android/stockchart/e/g;->c:F

    .line 1152
    if-nez p0, :cond_2

    move v0, v1

    .line 30016
    :goto_3
    iput v0, v4, Lcom/xueqiu/android/stockchart/e/g;->d:F

    .line 1154
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 1150
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "sp"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    goto :goto_1

    .line 1151
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "sc"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    goto :goto_2

    .line 1152
    :cond_2
    const-string v0, "current"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    goto :goto_3

    .line 1157
    :cond_3
    const/4 v0, 0x1

    move v2, v0

    :goto_4
    const/4 v0, 0x6

    if-ge v2, v0, :cond_7

    .line 1158
    new-instance v4, Lcom/xueqiu/android/stockchart/e/g;

    invoke-direct {v4}, Lcom/xueqiu/android/stockchart/e/g;-><init>()V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\u4e70"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30026
    iput-object v0, v4, Lcom/xueqiu/android/stockchart/e/g;->a:Ljava/lang/String;

    .line 1160
    if-nez p0, :cond_4

    move v0, v1

    .line 30034
    :goto_5
    iput v0, v4, Lcom/xueqiu/android/stockchart/e/g;->b:F

    .line 1161
    if-nez p0, :cond_5

    move v0, v1

    .line 30042
    :goto_6
    iput v0, v4, Lcom/xueqiu/android/stockchart/e/g;->c:F

    .line 1162
    if-nez p0, :cond_6

    move v0, v1

    .line 31016
    :goto_7
    iput v0, v4, Lcom/xueqiu/android/stockchart/e/g;->d:F

    .line 1164
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1160
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "bp"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    goto :goto_5

    .line 1161
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "bc"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    goto :goto_6

    .line 1162
    :cond_6
    const-string v0, "current"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    goto :goto_7

    .line 1167
    :cond_7
    return-object v3
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/d/a;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/xueqiu/android/stockchart/d/a;->br:Z

    return p1
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1514
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1515
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stockchart/d/a;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/xueqiu/android/stockchart/d/a;->bq:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->az:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static b(Lcom/google/gson/JsonObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    const-string v0, "list"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 1207
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1208
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1209
    new-instance v4, Lcom/xueqiu/android/stockchart/e/b;

    invoke-direct {v4}, Lcom/xueqiu/android/stockchart/e/b;-><init>()V

    .line 1211
    const-string v5, "ts"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 32012
    iput-object v5, v4, Lcom/xueqiu/android/stockchart/e/b;->a:Ljava/lang/String;

    .line 1212
    const-string v5, "c"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    .line 32020
    iput v5, v4, Lcom/xueqiu/android/stockchart/e/b;->b:F

    .line 1213
    const-string v5, "v"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    .line 32028
    iput v5, v4, Lcom/xueqiu/android/stockchart/e/b;->c:F

    .line 1214
    const-string v5, "type"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 32036
    iput v3, v4, Lcom/xueqiu/android/stockchart/e/b;->d:I

    .line 1216
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1218
    :cond_0
    return-object v1
.end method

.method static synthetic c(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aW:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c(F)V
    .locals 6

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1629
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 45068
    iget-object v2, v0, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 1630
    const-string v3, "MM-DD"

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MM-DD"

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1633
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46016
    iget v2, v0, Lcom/xueqiu/android/stockchart/e/f;->b:F

    .line 1634
    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 46076
    iput p1, v0, Lcom/xueqiu/android/stockchart/e/f;->b:F

    .line 47020
    :cond_0
    iget v2, v0, Lcom/xueqiu/android/stockchart/e/f;->c:F

    .line 1638
    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 47024
    iput p1, v0, Lcom/xueqiu/android/stockchart/e/f;->c:F

    .line 47032
    :cond_1
    iput p1, v0, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 1644
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getEndIndex()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1645
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 47258
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->invalidate()V

    .line 1648
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bd:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d(Lcom/google/gson/JsonObject;)V
    .locals 10

    .prologue
    .line 1270
    if-eqz p1, :cond_1

    .line 1272
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    const-string v0, "chartlist"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 1278
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1279
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 1280
    new-instance v6, Lcom/xueqiu/android/stockchart/e/f;

    invoke-direct {v6}, Lcom/xueqiu/android/stockchart/e/f;-><init>()V

    .line 1281
    new-instance v7, Lcom/xueqiu/android/stockchart/e/j;

    invoke-direct {v7}, Lcom/xueqiu/android/stockchart/e/j;-><init>()V

    .line 1282
    new-instance v8, Lcom/xueqiu/android/stockchart/e/e;

    invoke-direct {v8}, Lcom/xueqiu/android/stockchart/e/e;-><init>()V

    .line 1284
    const-string v9, "open"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 33012
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->a:F

    .line 1285
    const-string v9, "high"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 33076
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->b:F

    .line 1286
    const-string v9, "low"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 34024
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->c:F

    .line 1287
    const-string v9, "close"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 34032
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 1288
    const-string v9, "ma5"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 34040
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->e:F

    .line 1289
    const-string v9, "ma10"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 34048
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->f:F

    .line 1290
    const-string v9, "ma20"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 34056
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->g:F

    .line 1291
    const-string v9, "ma30"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 34064
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->h:F

    .line 1292
    const-string v9, "percent"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 34093
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->i:F

    .line 1293
    const-string v9, "time"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 35072
    iput-object v9, v6, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 1295
    const-string v9, "volume"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/xueqiu/android/stockchart/e/j;->a(Ljava/lang/String;)V

    .line 1297
    const-string v9, "dif"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 36016
    iput v9, v8, Lcom/xueqiu/android/stockchart/e/e;->a:F

    .line 1298
    const-string v9, "dea"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 36024
    iput v9, v8, Lcom/xueqiu/android/stockchart/e/e;->b:F

    .line 1299
    const-string v9, "macd"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    .line 36032
    iput v5, v8, Lcom/xueqiu/android/stockchart/e/e;->c:F

    .line 1301
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setOHLCMAArray(Ljava/util/ArrayList;)V

    .line 1307
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setVolumeArray(Ljava/util/ArrayList;)V

    .line 1308
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setMacdArray(Ljava/util/ArrayList;)V

    .line 1309
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setStock(Lcom/xueqiu/android/stockchart/e/h;)V

    .line 1310
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 36258
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->invalidate()V

    .line 1311
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 37162
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :cond_1
    :goto_1
    return-void

    .line 1313
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic e(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bl:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e(Lcom/google/gson/JsonObject;)V
    .locals 8

    .prologue
    .line 1319
    if-eqz p1, :cond_5

    .line 1321
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    const-string v0, "fund"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 1324
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    .line 1325
    const/4 v0, 0x0

    .line 1327
    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v5, "unit5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1328
    add-int/lit8 v0, v3, -0x5

    .line 1332
    :cond_0
    :goto_0
    if-ge v0, v3, :cond_4

    .line 1333
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 1334
    new-instance v5, Lcom/xueqiu/android/stockchart/e/d;

    invoke-direct {v5}, Lcom/xueqiu/android/stockchart/e/d;-><init>()V

    .line 1336
    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v7, "unit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1337
    const-string v6, "unit_nav"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v6

    .line 38015
    iput v6, v5, Lcom/xueqiu/android/stockchart/e/d;->a:F

    .line 1338
    const-string v6, "nav_date"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 38023
    iput-object v6, v5, Lcom/xueqiu/android/stockchart/e/d;->b:Ljava/lang/String;

    .line 1341
    :cond_1
    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v7, "seven"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1342
    const-string v6, "sevendayYield"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v6

    .line 39015
    iput v6, v5, Lcom/xueqiu/android/stockchart/e/d;->a:F

    .line 1343
    const-string v6, "valueDate"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 39023
    iput-object v6, v5, Lcom/xueqiu/android/stockchart/e/d;->b:Ljava/lang/String;

    .line 1346
    :cond_2
    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v7, "million"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1347
    const-string v6, "milliongain"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v6

    .line 40015
    iput v6, v5, Lcom/xueqiu/android/stockchart/e/d;->a:F

    .line 1348
    const-string v6, "valueDate"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 40023
    iput-object v4, v5, Lcom/xueqiu/android/stockchart/e/d;->b:Ljava/lang/String;

    .line 1351
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setFundDataArray(Ljava/util/ArrayList;)V

    .line 1355
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    .line 40066
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :cond_5
    :goto_1
    return-void

    .line 1358
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic f(Lcom/xueqiu/android/stockchart/d/a;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->br:Z

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stockchart/d/a;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bs:F

    return v0
.end method

.method private g(Z)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 978
    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aM:Z

    .line 979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 980
    if-eqz p1, :cond_6

    .line 982
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 23228
    iget-object v5, v1, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 982
    :goto_0
    if-nez v0, :cond_1

    .line 1049
    :goto_1
    return-void

    :cond_0
    move v0, v4

    .line 23228
    goto :goto_0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 24068
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 989
    :try_start_0
    sget-object v1, Lcom/xueqiu/android/stockchart/f/a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 24961
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v6, "1day"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 24962
    long-to-double v0, v0

    const-wide v6, 0x4184997000000000L    # 4.32E7

    sub-double/2addr v0, v6

    double-to-long v0, v0

    .line 24965
    :cond_2
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v6, "1week"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 24966
    const-wide/32 v6, 0x240c8400

    sub-long/2addr v0, v6

    .line 24969
    :cond_3
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v6, "1month"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    .line 24970
    const-wide v2, 0x9a7ec800L

    sub-long/2addr v0, v2

    .line 25942
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v3, "1day"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 25943
    long-to-double v2, v0

    const-wide v6, 0x42148f2348000000L    # 2.20752E10

    sub-double/2addr v2, v6

    double-to-long v2, v2

    .line 25946
    :goto_3
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v6, "1week"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 25947
    const-wide v2, 0xeaf625800L

    sub-long v2, v0, v2

    .line 25950
    :cond_5
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v6, "1month"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 25951
    const-wide v2, 0x496cebb800L

    sub-long v2, v0, v2

    move-wide v6, v2

    .line 996
    :goto_4
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    invoke-virtual {v2, v4}, Lcom/xueqiu/android/stockchart/view/LoadingView;->setVisibility(I)V

    .line 997
    const-string v2, "/stock/forchartk/stocklist.json"

    .line 999
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1000
    const-string v3, "symbol"

    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string v5, "period"

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v8, "1minute"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "1m"

    :goto_5
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    const-string v3, "type"

    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string v3, "end"

    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1007
    if-nez v0, :cond_8

    .line 1008
    const-string v1, "begin"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    :goto_6
    new-instance v5, Lcom/xueqiu/android/stockchart/d/a$2;

    invoke-direct {v5, p0, v0}, Lcom/xueqiu/android/stockchart/d/a$2;-><init>(Lcom/xueqiu/android/stockchart/d/a;Z)V

    .line 1048
    const-string v1, "stock"

    const-string v3, "get"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V

    goto/16 :goto_1

    .line 991
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    move-wide v0, v2

    goto/16 :goto_2

    .line 1001
    :cond_7
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    goto :goto_5

    .line 1010
    :cond_8
    const-string v1, "count"

    const-string v3, "100"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    move-wide v6, v2

    goto :goto_4

    :cond_a
    move-wide v2, v0

    goto/16 :goto_3
.end method

.method static synthetic h(Lcom/xueqiu/android/stockchart/d/a;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bp:I

    return v0
.end method

.method static synthetic i(Lcom/xueqiu/android/stockchart/d/a;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bq:I

    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/stockchart/d/a;)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aM:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 392
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/a/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 394
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    const-string v2, "big"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    sget v0, Lcom/xueqiu/android/stockchart/f;->fragment_big_chart:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    .line 396
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->big_chart_period_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    .line 397
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->big_chart_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    .line 398
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->big_chart_pankou_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->i:Landroid/widget/LinearLayout;

    .line 399
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->big_chart_kline_config_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    .line 400
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->big_chart_pankou_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/view/PankouView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    .line 402
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->big_chart_current_stock_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aW:Landroid/widget/LinearLayout;

    .line 403
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->big_chart_current_kline_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bd:Landroid/widget/LinearLayout;

    .line 404
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->big_chart_current_fund_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bl:Landroid/widget/LinearLayout;

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/PankouView;->setChartSize(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->i:Landroid/widget/LinearLayout;

    sget v2, Lcom/xueqiu/android/stockchart/e;->pankou_wudang:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aH:Landroid/widget/TextView;

    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->i:Landroid/widget/LinearLayout;

    sget v2, Lcom/xueqiu/android/stockchart/e;->pankou_detail:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aI:Landroid/widget/TextView;

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_stock_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aX:Landroid/widget/TextView;

    .line 423
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_stock_price:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aY:Landroid/widget/TextView;

    .line 424
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_stock_change:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aZ:Landroid/widget/TextView;

    .line 425
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_stock_amount:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ba:Landroid/widget/TextView;

    .line 426
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_stock_average:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bb:Landroid/widget/TextView;

    .line 427
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_stock_average_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bc:Landroid/widget/TextView;

    .line 429
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_kline_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->be:Landroid/widget/TextView;

    .line 430
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_kline_open:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bf:Landroid/widget/TextView;

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_kline_high:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bg:Landroid/widget/TextView;

    .line 432
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_kline_low:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bh:Landroid/widget/TextView;

    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_kline_close:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bi:Landroid/widget/TextView;

    .line 434
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_kline_percent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bj:Landroid/widget/TextView;

    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_kline_volume:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bk:Landroid/widget/TextView;

    .line 437
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_fund_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bm:Landroid/widget/TextView;

    .line 438
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_fund_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bn:Landroid/widget/TextView;

    .line 439
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->current_fund_value:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bo:Landroid/widget/TextView;

    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aH:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 443
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aH:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 2269
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 3231
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    const-string v2, "big"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3232
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aQ:Z

    if-eqz v0, :cond_3

    .line 3233
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "1d"

    aput-object v2, v0, v1

    const-string v2, "5d"

    aput-object v2, v0, v8

    const-string v2, "1day"

    aput-object v2, v0, v4

    const-string v2, "1week"

    aput-object v2, v0, v9

    const-string v2, "1month"

    aput-object v2, v0, v10

    const/4 v2, 0x5

    const-string v3, "minute"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "1m"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "6m"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "3y"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "all"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    .line 3234
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u5206\u65f6"

    aput-object v2, v0, v1

    const-string v2, "\u4e94\u65e5"

    aput-object v2, v0, v8

    const-string v2, "\u65e5K"

    aput-object v2, v0, v4

    const-string v2, "\u5468K"

    aput-object v2, v0, v9

    const-string v2, "\u6708K"

    aput-object v2, v0, v10

    const/4 v2, 0x5

    const-string v3, "\u5206\u949f"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "1\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "6\u6708"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "3\u5e74"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u5168\u90e8"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aS:[Ljava/lang/String;

    .line 3246
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aN:Z

    if-eqz v0, :cond_1

    .line 3247
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aO:Z

    if-eqz v0, :cond_5

    .line 3248
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "seven"

    aput-object v2, v0, v1

    const-string v2, "million"

    aput-object v2, v0, v8

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    .line 3249
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "\u4e03\u65e5\u5e74\u5316"

    aput-object v2, v0, v1

    const-string v2, "\u4e07\u4efd\u6536\u76ca"

    aput-object v2, v0, v8

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aS:[Ljava/lang/String;

    .line 3250
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v2, "1d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3251
    const-string v0, "seven"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    .line 3252
    const-string v0, "fund"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    :cond_1
    :goto_2
    move v0, v1

    .line 2273
    :goto_3
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 2274
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 2275
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aS:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 2277
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2278
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2279
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2280
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2284
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->aK:Landroid/content/res/TypedArray;

    invoke-virtual {v5, v9, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2285
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->h()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->aK:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2286
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2287
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2289
    const-string v5, "minute"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2290
    const-string v5, "minute_text"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2291
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2294
    sget v5, Lcom/xueqiu/android/stockchart/d;->icon_arrow_down:I

    invoke-virtual {v4, v1, v1, v5, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2295
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 2296
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2298
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2299
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2300
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aK:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v9, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2301
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2302
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2303
    const/16 v2, 0x11

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2305
    new-instance v2, Lcom/xueqiu/android/stockchart/d/a$6;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stockchart/d/a$6;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2312
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2273
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 406
    :cond_2
    sget v0, Lcom/xueqiu/android/stockchart/f;->fragment_small_chart:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    .line 407
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->small_period_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    .line 408
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->small_chart_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    .line 409
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->small_chart_pankou_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->i:Landroid/widget/LinearLayout;

    .line 410
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->small_chart_pankou_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/view/PankouView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->small_chart_current_stock_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aW:Landroid/widget/LinearLayout;

    .line 413
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->small_chart_current_kline_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bd:Landroid/widget/LinearLayout;

    .line 414
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    sget v2, Lcom/xueqiu/android/stockchart/e;->small_chart_current_fund_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bl:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 3236
    :cond_3
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "1d"

    aput-object v2, v0, v1

    const-string v2, "5d"

    aput-object v2, v0, v8

    const-string v2, "1day"

    aput-object v2, v0, v4

    const-string v2, "1week"

    aput-object v2, v0, v9

    const-string v2, "1month"

    aput-object v2, v0, v10

    const/4 v2, 0x5

    const-string v3, "1m"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "6m"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "3y"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "all"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    .line 3237
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u5206\u65f6"

    aput-object v2, v0, v1

    const-string v2, "\u4e94\u65e5"

    aput-object v2, v0, v8

    const-string v2, "\u65e5K"

    aput-object v2, v0, v4

    const-string v2, "\u5468K"

    aput-object v2, v0, v9

    const-string v2, "\u6708K"

    aput-object v2, v0, v10

    const/4 v2, 0x5

    const-string v3, "1\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "6\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "3\u5e74"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u5168\u90e8"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aS:[Ljava/lang/String;

    goto/16 :goto_1

    .line 3240
    :cond_4
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aQ:Z

    if-nez v0, :cond_0

    .line 3241
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "1d"

    aput-object v2, v0, v1

    const-string v2, "5d"

    aput-object v2, v0, v8

    const-string v2, "1day"

    aput-object v2, v0, v4

    const-string v2, "1week"

    aput-object v2, v0, v9

    const-string v2, "1month"

    aput-object v2, v0, v10

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    .line 3242
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u5206\u65f6"

    aput-object v2, v0, v1

    const-string v2, "\u4e94\u65e5"

    aput-object v2, v0, v8

    const-string v2, "\u65e5K"

    aput-object v2, v0, v4

    const-string v2, "\u5468K"

    aput-object v2, v0, v9

    const-string v2, "\u6708K"

    aput-object v2, v0, v10

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aS:[Ljava/lang/String;

    goto/16 :goto_1

    .line 3254
    :cond_5
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aP:Z

    if-eqz v0, :cond_6

    .line 3255
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "unit5"

    aput-object v2, v0, v1

    const-string v2, "unit"

    aput-object v2, v0, v8

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    .line 3256
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "\u4e94\u65e5\u51c0\u503c"

    aput-object v2, v0, v1

    const-string v2, "\u7d2f\u8ba1\u51c0\u503c"

    aput-object v2, v0, v8

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aS:[Ljava/lang/String;

    .line 3257
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v2, "1d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3258
    const-string v0, "unit5"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    .line 3259
    const-string v0, "fund"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    goto/16 :goto_2

    .line 3262
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    const-string v2, "unit"

    aput-object v2, v0, v8

    .line 3263
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aS:[Ljava/lang/String;

    const-string v2, "\u51c0\u503c"

    aput-object v2, v0, v8

    goto/16 :goto_2

    .line 2314
    :cond_7
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2315
    add-int/lit8 v2, v0, 0x1

    .line 2316
    new-instance v3, Lcom/xueqiu/android/stockchart/d/a$7;

    invoke-direct {v3, p0, v2}, Lcom/xueqiu/android/stockchart/d/a$7;-><init>(Lcom/xueqiu/android/stockchart/d/a;I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2327
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 2331
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2332
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const-string v1, "minute"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2334
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const-string v1, "minute_text"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2335
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const-string v1, "minute_text"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    .line 3344
    const-string v2, "1minute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v1, "1\u5206"

    .line 2335
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->b()V

    .line 453
    :goto_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/d/a;->c(Lcom/google/gson/JsonObject;)V

    .line 3502
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    new-instance v1, Lcom/xueqiu/android/stockchart/d/a$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stockchart/d/a$10;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->setOnPressListener(Lcom/xueqiu/android/stockchart/a/c;)V

    .line 3566
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    new-instance v1, Lcom/xueqiu/android/stockchart/d/a$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stockchart/d/a$11;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->setOnDragEventListener(Lcom/xueqiu/android/stockchart/a/a;)V

    .line 458
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    if-eqz v0, :cond_a

    if-eqz p3, :cond_b

    .line 459
    :cond_a
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->v()V

    .line 462
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->f:Landroid/view/View;

    return-object v0

    .line 3344
    :cond_c
    const-string v2, "m"

    const-string v3, "\u5206"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 2338
    :cond_d
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_6

    .line 450
    :cond_e
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method public final a(F)V
    .locals 12

    .prologue
    .line 688
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTimesArray()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->b(F)I

    move-result v1

    .line 693
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTimesSize()I

    move-result v0

    .line 695
    if-ge v1, v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(I)Lcom/xueqiu/android/stockchart/e/i;

    move-result-object v2

    .line 697
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->b(I)Lcom/xueqiu/android/stockchart/e/j;

    move-result-object v0

    .line 7713
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    if-eqz v3, :cond_5

    .line 7717
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 8038
    iget v3, v3, Lcom/xueqiu/android/stockchart/e/h;->d:F

    .line 9008
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/j;->a:F

    .line 9011
    iget v4, v2, Lcom/xueqiu/android/stockchart/e/i;->a:F

    .line 9030
    iget v5, v2, Lcom/xueqiu/android/stockchart/e/i;->c:F

    .line 7721
    sub-float v6, v4, v3

    div-float v3, v6, v3

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    .line 7723
    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 9087
    iget-wide v6, v6, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 7723
    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v4

    .line 7724
    float-to-double v6, v0

    invoke-static {v6, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(D)Ljava/lang/String;

    move-result-object v0

    .line 7725
    const-string v6, "%.2f%%"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 7726
    iget-object v7, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 10087
    iget-wide v8, v7, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 7726
    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v5

    .line 7727
    iget-object v7, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v7, v3}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(F)I

    move-result v3

    .line 7729
    iget-object v7, p0, Lcom/xueqiu/android/stockchart/d/a;->aY:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7730
    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/a;->aY:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7732
    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/a;->aZ:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7733
    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/a;->aZ:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7735
    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/a;->ba:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7737
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bb:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7738
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 11046
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 7738
    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7739
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bb:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7740
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bb:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7747
    :cond_2
    :goto_1
    const-string v0, "YYYY-MM-DD"

    .line 7748
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v4, "1d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v4, "5d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7749
    :cond_3
    const-string v0, "hh:mm"

    .line 7752
    :cond_4
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aX:Landroid/widget/TextView;

    .line 12020
    iget-object v2, v2, Lcom/xueqiu/android/stockchart/e/i;->b:Ljava/lang/String;

    .line 7752
    invoke-static {v2, v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    .line 12606
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(I)Lcom/xueqiu/android/stockchart/e/i;

    move-result-object v2

    .line 12607
    if-nez v2, :cond_7

    .line 12608
    new-instance v0, Lcom/xueqiu/android/stockchart/e/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/stockchart/e/c;-><init>(FF)V

    .line 705
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setIsOnPress(Z)V

    .line 706
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {v1, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setPressEventX(F)V

    .line 707
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 13012
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/c;->a:F

    .line 707
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setPressEventY(F)V

    .line 708
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 13162
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V

    goto/16 :goto_0

    .line 7742
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bb:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7743
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bc:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 12611
    :cond_7
    iget v3, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 12612
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v3

    .line 13011
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/i;->a:F

    .line 12612
    iget v4, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->e:F

    sub-float/2addr v2, v4

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->d:F

    mul-float/2addr v0, v2

    sub-float v2, v3, v0

    .line 12613
    new-instance v0, Lcom/xueqiu/android/stockchart/e/c;

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/stockchart/e/c;-><init>(FF)V

    goto :goto_2
.end method

.method public final a(FF)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 756
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getFundDataArray()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/view/FundChartView;->b(F)I

    move-result v0

    .line 761
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->a(I)Lcom/xueqiu/android/stockchart/e/d;

    move-result-object v1

    .line 13771
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bm:Landroid/widget/TextView;

    .line 14019
    iget-object v2, v1, Lcom/xueqiu/android/stockchart/e/d;->b:Ljava/lang/String;

    .line 13771
    const-string v3, "YYYY-MM-DD"

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13773
    const-string v0, "\u51c0\u503c"

    .line 13774
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v3, "seven"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13775
    const-string v0, "\u4e03\u65e5\u5e74\u5316"

    .line 13778
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v3, "million"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13779
    const-string v0, "\u4e07\u4efd\u6536\u76ca"

    .line 13782
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->bn:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13783
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bo:Landroid/widget/TextView;

    const-string v2, "%.4f"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 15011
    iget v1, v1, Lcom/xueqiu/android/stockchart/e/d;->a:F

    .line 13783
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setIsOnPress(Z)V

    .line 764
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setPressEventX(F)V

    .line 765
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {v0, p2}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setPressEventY(F)V

    .line 767
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 15162
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V

    goto :goto_0
.end method

.method public a(FJ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1612
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v1, "1d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43651
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    if-eqz v0, :cond_1

    .line 43655
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    .line 43678
    iget-object v0, v1, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 43682
    iget-object v0, v1, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/i;

    .line 43683
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/e/i;->a(Ljava/lang/String;)V

    .line 43685
    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->invalidate()V

    .line 43657
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getCurrentX()F

    move-result v0

    .line 43658
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    .line 44673
    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v2

    iget v3, v1, Lcom/xueqiu/android/stockchart/view/StockChartView;->e:F

    sub-float v3, p1, v3

    iget v1, v1, Lcom/xueqiu/android/stockchart/view/StockChartView;->d:F

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 43660
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 43662
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 43663
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 43665
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43666
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v3, v0, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 43667
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stockchart/view/BlinkPointView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->w()V

    .line 1616
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v1, "1day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1617
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->c(F)V

    .line 1621
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "kline"

    .line 1622
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1623
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->c(F)V

    .line 1625
    :cond_4
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/support/v4/a/i;->a(Landroid/os/Bundle;)V

    .line 382
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_border_color:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_split_color:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_text_color:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_period_selected_bg:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_text_level1_color:I

    aput v3, v1, v2

    .line 384
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aK:Landroid/content/res/TypedArray;

    .line 386
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    const-string v1, "access_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->a:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 645
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 646
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 198
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    .line 203
    invoke-static {p1}, Lcom/xueqiu/android/stockchart/f/a;->b(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ap:Ljava/text/DecimalFormat;

    .line 204
    invoke-static {p1}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;)Lcom/xueqiu/android/stockchart/f/b;

    move-result-object v0

    .line 206
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/f/b;->c:Ljava/lang/String;

    const-string v1, "\u57fa\u91d1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aN:Z

    .line 208
    const-string v0, "MF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aO:Z

    .line 215
    :cond_2
    :goto_1
    const-string v0, "SH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    :cond_3
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aQ:Z

    goto :goto_0

    .line 210
    :cond_4
    const-string v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aP:Z

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/stockchart/c/a",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->e:Lcom/xueqiu/android/stockchart/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    const-string v0, "api"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1770
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->e:Lcom/xueqiu/android/stockchart/c/b;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/xueqiu/android/stockchart/c/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V

    goto :goto_0

    .line 1771
    :cond_2
    const-string v0, "stock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->e:Lcom/xueqiu/android/stockchart/c/b;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/xueqiu/android/stockchart/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    .line 858
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ax:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 859
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ax:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 860
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/d/a;->c(Lcom/google/gson/JsonObject;)V

    .line 890
    :goto_0
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/LoadingView;->setVisibility(I)V

    .line 864
    const-string v2, "/stock/forchart/stocklist.json"

    .line 865
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 866
    const-string v0, "symbol"

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v0, "period"

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v1, "1d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    const-string v0, "one_min"

    const-string v1, "1"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_1
    new-instance v5, Lcom/xueqiu/android/stockchart/d/a$12;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/stockchart/d/a$12;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    .line 888
    const-string v1, "stock"

    const-string v3, "get"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    const-string v1, "key_kline_type"

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    .line 468
    const-string v1, "key_kline_indicator"

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->au:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->au:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;)Lcom/xueqiu/android/stockchart/f/b;

    move-result-object v0

    .line 471
    iget-object v1, v0, Lcom/xueqiu/android/stockchart/f/b;->b:Ljava/lang/String;

    const-string v2, "\u6e2f\u80a1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    const-string v1, "normal"

    iput-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    .line 475
    :cond_0
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/f/b;->b:Ljava/lang/String;

    const-string v1, "\u7f8e\u80a1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    const-string v0, "before"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setKlineType(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->au:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setIndicator(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 4258
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->invalidate()V

    .line 484
    :cond_2
    return-void
.end method

.method public final b(F)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 787
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b(F)I

    move-result v0

    .line 792
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowOHLCMAArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 793
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowOHLCMAArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 795
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(I)Lcom/xueqiu/android/stockchart/e/f;

    move-result-object v4

    .line 15805
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    if-eqz v0, :cond_3

    .line 16008
    iget v3, v4, Lcom/xueqiu/android/stockchart/e/f;->a:F

    .line 15810
    add-int/lit8 v0, v1, -0x1

    .line 15811
    if-gez v0, :cond_1

    move v0, v2

    .line 15815
    :cond_1
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(I)Lcom/xueqiu/android/stockchart/e/f;

    move-result-object v0

    .line 15816
    if-eqz v0, :cond_5

    .line 16028
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 15820
    :goto_2
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15821
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->be:Landroid/widget/TextView;

    .line 16068
    iget-object v5, v4, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 15821
    const-string v6, "MM-DD hh:mm"

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18008
    :goto_3
    iget v3, v4, Lcom/xueqiu/android/stockchart/e/f;->a:F

    .line 15827
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->bf:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    sub-float v7, v3, v0

    invoke-virtual {v6, v7}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15828
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->bf:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 18087
    iget-wide v6, v6, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 15828
    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19016
    iget v3, v4, Lcom/xueqiu/android/stockchart/e/f;->b:F

    .line 15831
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->bg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    sub-float v7, v3, v0

    invoke-virtual {v6, v7}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15832
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->bg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 19087
    iget-wide v6, v6, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 15832
    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20020
    iget v3, v4, Lcom/xueqiu/android/stockchart/e/f;->c:F

    .line 15835
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->bh:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    sub-float v7, v3, v0

    invoke-virtual {v6, v7}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15836
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->bh:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 20087
    iget-wide v6, v6, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 15836
    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21028
    iget v3, v4, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 15839
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->bi:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    sub-float v0, v3, v0

    invoke-virtual {v6, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(F)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15840
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bi:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 21087
    iget-wide v6, v5, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 15840
    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21089
    iget v3, v4, Lcom/xueqiu/android/stockchart/e/f;->i:F

    .line 15843
    const-string v0, "%.2f%%"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15844
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    .line 15845
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15847
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->bj:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v4, v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15848
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->bj:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15850
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->bk:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 15851
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 21831
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/j;

    .line 15852
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->bk:Landroid/widget/TextView;

    .line 22008
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/j;->a:F

    .line 15852
    float-to-double v4, v0

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setIsOnPress(Z)V

    .line 798
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setPressEventX(F)V

    .line 799
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 22852
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(I)Lcom/xueqiu/android/stockchart/e/f;

    move-result-object v1

    .line 22853
    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v3

    .line 23028
    iget v1, v1, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 22853
    iget v4, v2, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    sub-float/2addr v1, v4

    iget v2, v2, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    mul-float/2addr v1, v2

    sub-float v1, v3, v1

    .line 799
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setPressEventY(F)V

    .line 801
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 23162
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V

    goto/16 :goto_0

    .line 15823
    :cond_4
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->be:Landroid/widget/TextView;

    .line 17068
    iget-object v5, v4, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 15823
    const-string v6, "YYYY-MM-DD"

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    move v0, v3

    goto/16 :goto_2

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/16 v5, -0x64

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 1523
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aR:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 1527
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1528
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1531
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1532
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const-string v2, "minute"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1533
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/xueqiu/android/stockchart/f;->minute_kline_menu:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1534
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1535
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1536
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const-string v3, "minute_text"

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1537
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const-string v3, "minute_text"

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setVisibility(I)V

    .line 1551
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setVisibility(I)V

    .line 1552
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setVisibility(I)V

    .line 1554
    const-string v0, "1d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 42671
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 42672
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42673
    invoke-virtual {v2, v5, v5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 42674
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/BlinkPointView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aT:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1559
    const-string v0, "stock"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    .line 1560
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setPeriod(Ljava/lang/String;)V

    .line 1563
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aU:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1564
    const-string v0, "kline"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    .line 1565
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setPeriod(Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c()V

    .line 1569
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aV:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1570
    const-string v0, "fund"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    .line 1571
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setPeriod(Ljava/lang/String;)V

    .line 1574
    :cond_6
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    .line 1575
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->setChartType(Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setChartType(Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setPeriod(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->v()V

    goto/16 :goto_0

    .line 1541
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1542
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1545
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const-string v2, "minute_text"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1546
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const-string v2, "minute_text"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u5206\u949f"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public final c(Lcom/google/gson/JsonObject;)V
    .locals 12

    .prologue
    const/16 v11, -0x64

    const/4 v10, 0x4

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 1368
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    .line 1369
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    if-nez v0, :cond_0

    .line 1370
    new-instance v0, Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    .line 1371
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setSymbol(Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setPeriod(Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setType(Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    const-string v2, "stock"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setChartType(Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    if-nez v0, :cond_1

    .line 1380
    new-instance v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 1381
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setSymbol(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setPeriod(Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setType(Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    const-string v2, "kline"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setChartType(Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setKlineType(Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->au:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setIndicator(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    if-nez v0, :cond_2

    .line 1391
    new-instance v0, Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stockchart/view/FundChartView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    .line 1392
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setSymbol(Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setPeriod(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setType(Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    const-string v2, "fund"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setChartType(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1399
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 40474
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;)Lcom/xueqiu/android/stockchart/f/b;

    move-result-object v0

    .line 40475
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/f/b;->b:Ljava/lang/String;

    .line 40476
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    sget v3, Lcom/xueqiu/android/stockchart/e;->big_chart_kline_config_type:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 40478
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v4, "kline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 40479
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40482
    const-string v3, "\u6e2f\u80a1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 40483
    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 40484
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    sget v4, Lcom/xueqiu/android/stockchart/e;->config_divider:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 40490
    :goto_0
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 40491
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    sget v4, Lcom/xueqiu/android/stockchart/e;->kline_indicator_macd:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 40497
    :goto_1
    const-string v3, "\u7f8e\u80a1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40498
    sget v0, Lcom/xueqiu/android/stockchart/e;->kline_type_after:I

    .line 40499
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40500
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setVisibility(I)V

    .line 1404
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setVisibility(I)V

    .line 1405
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setVisibility(I)V

    .line 1407
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v2, "stock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41226
    if-eqz p1, :cond_a

    .line 41228
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41231
    const-string v0, "chartlist"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    move v0, v1

    .line 41233
    :goto_3
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_12

    .line 41234
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 41235
    new-instance v6, Lcom/xueqiu/android/stockchart/e/i;

    invoke-direct {v6}, Lcom/xueqiu/android/stockchart/e/i;-><init>()V

    .line 41236
    new-instance v7, Lcom/xueqiu/android/stockchart/e/j;

    invoke-direct {v7}, Lcom/xueqiu/android/stockchart/e/j;-><init>()V

    .line 41238
    const-string v8, "current"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xueqiu/android/stockchart/e/i;->a(Ljava/lang/String;)V

    .line 41239
    const-string v8, "time"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 42024
    iput-object v8, v6, Lcom/xueqiu/android/stockchart/e/i;->b:Ljava/lang/String;

    .line 41241
    iget-object v8, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v9, "1d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v9, "5d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 41242
    :cond_5
    const-string v8, "avg_price"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xueqiu/android/stockchart/e/i;->b(Ljava/lang/String;)V

    .line 41247
    :goto_4
    const-string v8, "volume"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/xueqiu/android/stockchart/e/j;->a(Ljava/lang/String;)V

    .line 41249
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41250
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41233
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 40486
    :cond_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40487
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    sget v4, Lcom/xueqiu/android/stockchart/e;->config_divider:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 40493
    :cond_7
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    sget v4, Lcom/xueqiu/android/stockchart/e;->kline_indicator_macd:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 40503
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ak:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 41244
    :cond_9
    :try_start_1
    const-string v8, "current"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xueqiu/android/stockchart/e/i;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 41260
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1409
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setVisibility(I)V

    .line 1412
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v2, "kline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1413
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->d(Lcom/google/gson/JsonObject;)V

    .line 1414
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setVisibility(I)V

    .line 1417
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v2, "fund"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1418
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->e(Lcom/google/gson/JsonObject;)V

    .line 1419
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/FundChartView;->setVisibility(I)V

    .line 1422
    :cond_d
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    if-nez v0, :cond_e

    .line 1423
    new-instance v0, Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stockchart/view/BlinkPointView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    .line 1424
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    sget v2, Lcom/xueqiu/android/stockchart/d;->blink_point_view_background:I

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/BlinkPointView;->setBackgroundResource(I)V

    .line 1425
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1427
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1428
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1429
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 1430
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1431
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1433
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/stockchart/view/BlinkPointView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1435
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 1436
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1437
    invoke-virtual {v2, v11, v11, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1438
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aJ:Lcom/xueqiu/android/stockchart/view/BlinkPointView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/BlinkPointView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1441
    :cond_e
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    if-nez v0, :cond_f

    .line 1442
    new-instance v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 1443
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setSymbol(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setChartType(Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setType(Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setPeriod(Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setKlineChartView(Lcom/xueqiu/android/stockchart/view/KlineChartView;)V

    .line 1448
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setStockChartView(Lcom/xueqiu/android/stockchart/view/StockChartView;)V

    .line 1449
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setFundChartView(Lcom/xueqiu/android/stockchart/view/FundChartView;)V

    .line 1450
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1452
    :cond_f
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setStock(Lcom/xueqiu/android/stockchart/e/h;)V

    .line 1454
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    if-nez v0, :cond_10

    .line 1455
    new-instance v0, Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    .line 1456
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->setChartType(Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->setType(Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->b:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/view/EventView;->b:Landroid/widget/LinearLayout;

    .line 1459
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1462
    :cond_10
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    if-nez v0, :cond_11

    .line 1463
    new-instance v0, Lcom/xueqiu/android/stockchart/view/LoadingView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stockchart/view/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    .line 1464
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/stockchart/view/LoadingView;->setVisibility(I)V

    .line 1465
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1468
    :cond_11
    return-void

    .line 41253
    :cond_12
    :try_start_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setTimesArray(Ljava/util/ArrayList;)V

    .line 41254
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setVolumeArray(Ljava/util/ArrayList;)V

    .line 41255
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setStock(Lcom/xueqiu/android/stockchart/e/h;)V

    .line 41256
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setPeriod(Ljava/lang/String;)V

    .line 41257
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    .line 42119
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->invalidate()V

    .line 41258
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 42162
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 1778
    invoke-super {p0}, Landroid/support/v4/a/i;->d()V

    .line 1779
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aL:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->bt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1780
    return-void
.end method

.method public final f(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "stock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stockchart/d/a;->a(Z)V

    .line 26896
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26052
    if-nez p1, :cond_3

    .line 26057
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ay:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26058
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ay:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 26060
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26061
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/d/a;->c(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 26063
    :cond_2
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->g(Z)V

    goto :goto_0

    .line 26066
    :cond_3
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->g(Z)V

    goto :goto_0

    .line 1095
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "fund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26893
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ax:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26894
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ax:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 26895
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/d/a;->c(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 26897
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/LoadingView;->setVisibility(I)V

    .line 26899
    const-string v2, "/fund/forchart/day.json"

    .line 26901
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aO:Z

    if-eqz v0, :cond_6

    .line 26902
    const-string v2, "/money_fund/forchart/day.json"

    .line 26905
    :cond_6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 26906
    const-string v0, "symbol"

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26907
    const-string v0, "period"

    const-string v1, "6m"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26909
    new-instance v5, Lcom/xueqiu/android/stockchart/d/a$13;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/stockchart/d/a$13;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    .line 26934
    const-string v1, "api"

    const-string v3, "get"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V

    goto/16 :goto_0
.end method

.method public final o()V
    .locals 4

    .prologue
    .line 1784
    invoke-super {p0}, Landroid/support/v4/a/i;->o()V

    .line 1785
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aL:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->bt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1786
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aL:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->bt:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1789
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "small"

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/d/a;->b(Ljava/lang/String;)V

    .line 1792
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1584
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1585
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    const-string v2, "wudang"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "detail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1590
    :cond_2
    iput-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->av:Ljava/lang/String;

    .line 1592
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aH:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1593
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->aI:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1596
    const-string v2, "wudang"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1597
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aH:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1598
    const/4 v0, 0x2

    .line 1602
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->w()V

    .line 1604
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->al:Lcom/xueqiu/android/stockchart/b/a;

    if-eqz v1, :cond_0

    .line 1605
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->al:Lcom/xueqiu/android/stockchart/b/a;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/stockchart/b/a;->a(I)V

    goto :goto_0

    .line 1600
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aI:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1
.end method

.method public q()V
    .locals 2

    .prologue
    .line 682
    invoke-super {p0}, Landroid/support/v4/a/i;->q()V

    .line 684
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aL:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 685
    return-void
.end method

.method public final u()V
    .locals 3

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-static {v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;)Lcom/xueqiu/android/stockchart/f/b;

    move-result-object v1

    .line 492
    iget-object v1, v1, Lcom/xueqiu/android/stockchart/f/b;->b:Ljava/lang/String;

    const-string v2, "\u6caa\u6df1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const-string v1, "key_kline_type"

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    :cond_0
    const-string v1, "key_kline_indicator"

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a;->au:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 499
    return-void
.end method

.method public final v()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 649
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setTimesArray(Ljava/util/ArrayList;)V

    .line 652
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setVolumeArray(Ljava/util/ArrayList;)V

    .line 653
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setStock(Lcom/xueqiu/android/stockchart/e/h;)V

    .line 654
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->setPeriod(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    .line 5119
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->invalidate()V

    .line 657
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v1, "1d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 6046
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 659
    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 661
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->w()V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v1, "1d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 7046
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 669
    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 671
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/a;->w()V

    .line 676
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stockchart/d/a;->f(Z)V

    goto :goto_0

    .line 673
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public final w()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PankouView;->setSymbol(Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PankouView;->setStock(Lcom/xueqiu/android/stockchart/e/h;)V

    .line 1103
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->am:Lcom/xueqiu/android/stockchart/a/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PankouView;->setOnPankouClickListener(Lcom/xueqiu/android/stockchart/a/b;)V

    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->av:Ljava/lang/String;

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27171
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27172
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PankouView;->setType(Ljava/lang/String;)V

    .line 27173
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/PankouView;->setDetailList(Ljava/util/List;)V

    .line 28115
    :goto_0
    return-void

    .line 27177
    :cond_0
    const-string v2, "/stock/trade_detail.json"

    .line 27178
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 27179
    const-string v0, "symbol"

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27180
    const-string v0, "count"

    const-string v1, "10"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27181
    new-instance v5, Lcom/xueqiu/android/stockchart/d/a$4;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/stockchart/d/a$4;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    .line 27201
    const-string v1, "api"

    const-string v3, "get"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V

    goto :goto_0

    .line 28112
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 28113
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    const-string v1, "wudang"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PankouView;->setType(Ljava/lang/String;)V

    .line 28114
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    invoke-static {v2}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/google/gson/JsonObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/PankouView;->setPanKouList(Ljava/util/List;)V

    goto :goto_0

    .line 28118
    :cond_2
    const-string v2, "/stock/pankou.json"

    .line 28119
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 28120
    const-string v0, "symbol"

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28122
    new-instance v5, Lcom/xueqiu/android/stockchart/d/a$3;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/stockchart/d/a$3;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    .line 28142
    const-string v1, "stock"

    const-string v3, "get"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V

    goto :goto_0
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 1678
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/d/a;->a(Z)V

    .line 1679
    return-void
.end method
