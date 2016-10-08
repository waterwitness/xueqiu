.class public final Lcom/xueqiu/android/community/a/ar;
.super Lcom/xueqiu/android/common/a/d;
.source "TopicInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/TopicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/content/Context;

.field private f:Lcom/xueqiu/android/community/a/as;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ar;->e:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ar;->f:Lcom/xueqiu/android/community/a/as;

    .line 35
    if-nez p2, :cond_4

    .line 36
    new-instance v0, Lcom/xueqiu/android/community/a/as;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/as;-><init>(Lcom/xueqiu/android/community/a/ar;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ar;->f:Lcom/xueqiu/android/community/a/as;

    .line 37
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ar;->f:Lcom/xueqiu/android/community/a/as;

    .line 1048
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ar;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1049
    const v2, 0x7f0300b8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1050
    const v0, 0x7f0e02f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/as;->a:Landroid/widget/TextView;

    .line 1051
    const v0, 0x7f0e02f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/as;->b:Landroid/widget/ImageView;

    .line 1052
    const v0, 0x7f0e02f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/as;->d:Landroid/widget/TextView;

    .line 1053
    const v0, 0x7f0e02ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/as;->c:Landroid/widget/ImageView;

    .line 1054
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/ar;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/TopicInfo;

    .line 42
    iget-object v2, p0, Lcom/xueqiu/android/community/a/ar;->f:Lcom/xueqiu/android/community/a/as;

    .line 1068
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1069
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->e:Lcom/xueqiu/android/community/a/ar;

    .line 2023
    iget-object v1, v1, Lcom/xueqiu/android/community/a/ar;->e:Landroid/content/Context;

    .line 1069
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1070
    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1071
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicPicRatio()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_5

    .line 1072
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicPicRatio()D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 1073
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->c:Landroid/widget/ImageView;

    double-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 1077
    :goto_1
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->c:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1078
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 2293
    const v4, 0x7f020460

    iput v4, v1, Lcom/d/a/b/e;->c:I

    .line 3270
    const v4, 0x7f020460

    iput v4, v1, Lcom/d/a/b/e;->b:I

    .line 4248
    const v4, 0x7f020460

    iput v4, v1, Lcom/d/a/b/e;->a:I

    .line 1082
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 1083
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicPic()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/xueqiu/android/community/a/as;->c:Landroid/widget/ImageView;

    new-instance v7, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v7}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 1084
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicType()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 1085
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 4293
    const v4, 0x7f020460

    iput v4, v1, Lcom/d/a/b/e;->c:I

    .line 5270
    const v4, 0x7f020460

    iput v4, v1, Lcom/d/a/b/e;->b:I

    .line 6248
    const v4, 0x7f020460

    iput v4, v1, Lcom/d/a/b/e;->a:I

    .line 1089
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 1090
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicPicHeader()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/xueqiu/android/community/a/as;->b:Landroid/widget/ImageView;

    new-instance v7, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v7}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 1091
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->a:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1093
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1094
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x15

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1095
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x15

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1096
    iget-object v3, v2, Lcom/xueqiu/android/community/a/as;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicType()I

    move-result v1

    if-nez v1, :cond_2

    .line 1099
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->b:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1100
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1101
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xe

    if-le v1, v3, :cond_6

    .line 1104
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    div-int/lit8 v1, v1, 0x2

    .line 1105
    const/4 v3, 0x3

    if-le v1, v3, :cond_1

    .line 1106
    const/4 v1, 0x3

    .line 1108
    :cond_1
    iget-object v3, v2, Lcom/xueqiu/android/community/a/as;->a:Landroid/widget/TextView;

    rsub-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1114
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1115
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, v2, Lcom/xueqiu/android/community/a/as;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    :cond_3
    return-object p2

    .line 39
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/as;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ar;->f:Lcom/xueqiu/android/community/a/as;

    goto/16 :goto_0

    .line 1075
    :cond_5
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->c:Landroid/widget/ImageView;

    const/high16 v4, 0x43200000    # 160.0f

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    goto/16 :goto_1

    .line 1110
    :cond_6
    iget-object v1, v2, Lcom/xueqiu/android/community/a/as;->a:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2
.end method
