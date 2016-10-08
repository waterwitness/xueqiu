.class public final Lcom/xueqiu/android/message/a/r;
.super Landroid/widget/BaseAdapter;
.source "MediaboardAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/xueqiu/android/message/model/Talk;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/a/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xueqiu/android/message/a/r;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/xueqiu/android/message/a/r;->c:Lcom/xueqiu/android/message/model/Talk;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/r;->b:Landroid/view/LayoutInflater;

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    new-instance v1, Lcom/xueqiu/android/message/a/t;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/t;-><init>()V

    .line 1046
    const-string v2, "\u62cd\u7167"

    iput-object v2, v1, Lcom/xueqiu/android/message/a/t;->c:Ljava/lang/String;

    .line 1047
    const/4 v2, 0x1

    iput v2, v1, Lcom/xueqiu/android/message/a/t;->a:I

    .line 1048
    const v2, 0x7f0202af

    iput v2, v1, Lcom/xueqiu/android/message/a/t;->b:I

    .line 1049
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v1, Lcom/xueqiu/android/message/a/t;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/t;-><init>()V

    .line 1051
    const-string v2, "\u56fe\u7247"

    iput-object v2, v1, Lcom/xueqiu/android/message/a/t;->c:Ljava/lang/String;

    .line 1052
    const/4 v2, 0x2

    iput v2, v1, Lcom/xueqiu/android/message/a/t;->a:I

    .line 1053
    const v2, 0x7f0202b0

    iput v2, v1, Lcom/xueqiu/android/message/a/t;->b:I

    .line 1054
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance v1, Lcom/xueqiu/android/message/a/t;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/t;-><init>()V

    .line 1056
    const-string v2, "\u80a1\u7968"

    iput-object v2, v1, Lcom/xueqiu/android/message/a/t;->c:Ljava/lang/String;

    .line 1057
    const/4 v2, 0x3

    iput v2, v1, Lcom/xueqiu/android/message/a/t;->a:I

    .line 1058
    const v2, 0x7f0202b2

    iput v2, v1, Lcom/xueqiu/android/message/a/t;->b:I

    .line 1059
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    new-instance v1, Lcom/xueqiu/android/message/a/t;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/t;-><init>()V

    .line 1061
    const-string v2, "\u540d\u7247"

    iput-object v2, v1, Lcom/xueqiu/android/message/a/t;->c:Ljava/lang/String;

    .line 1062
    const/4 v2, 0x4

    iput v2, v1, Lcom/xueqiu/android/message/a/t;->a:I

    .line 1063
    const v2, 0x7f0202b1

    iput v2, v1, Lcom/xueqiu/android/message/a/t;->b:I

    .line 1064
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iput-object v0, p0, Lcom/xueqiu/android/message/a/r;->d:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/message/a/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/message/a/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/message/a/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/t;

    iget v0, v0, Lcom/xueqiu/android/message/a/t;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/message/a/r;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030171

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1124
    new-instance v1, Lcom/xueqiu/android/message/a/s;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/s;-><init>()V

    .line 1125
    const v0, 0x7f0e0570

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/s;->a:Landroid/widget/ImageView;

    .line 1126
    const v0, 0x7f0e0571

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/s;->b:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/s;

    .line 99
    iget-object v1, p0, Lcom/xueqiu/android/message/a/r;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/a/t;

    .line 1131
    iget v2, v1, Lcom/xueqiu/android/message/a/t;->a:I

    if-lez v2, :cond_2

    .line 1132
    iget-object v2, v0, Lcom/xueqiu/android/message/a/s;->a:Landroid/widget/ImageView;

    iget v3, v1, Lcom/xueqiu/android/message/a/t;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1133
    iget-object v0, v0, Lcom/xueqiu/android/message/a/s;->b:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/xueqiu/android/message/a/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_1
    :goto_0
    return-object p2

    .line 1134
    :cond_2
    iget v1, v1, Lcom/xueqiu/android/message/a/t;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1135
    iget-object v1, v0, Lcom/xueqiu/android/message/a/s;->a:Landroid/widget/ImageView;

    const v2, 0x7f0202ae

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1136
    iget-object v0, v0, Lcom/xueqiu/android/message/a/s;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
