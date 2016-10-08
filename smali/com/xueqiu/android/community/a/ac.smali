.class public final Lcom/xueqiu/android/community/a/ac;
.super Landroid/support/v4/view/bd;
.source "RelatedArticleAdapter.java"


# instance fields
.field b:Landroid/content/Context;

.field private c:Lcom/xueqiu/android/community/model/RecommendCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ac;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/xueqiu/android/community/a/ac;->c:Lcom/xueqiu/android/community/model/RecommendCard;

    .line 35
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/RecommendCard;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/a/ac;->d:I

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ac;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a7

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 55
    if-nez p2, :cond_2

    .line 56
    iget v0, p0, Lcom/xueqiu/android/community/a/ac;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v4, v3, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ac;->c:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendCard;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 1076
    const v1, 0x7f0e0286

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1077
    const v2, 0x7f0e02b2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1078
    const v3, 0x7f0e02b3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1080
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1081
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    new-instance v1, Lcom/xueqiu/android/community/a/ac$1;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/a/ac$1;-><init>(Lcom/xueqiu/android/community/a/ac;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v4

    .line 72
    :goto_2
    return-object v0

    .line 59
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 60
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 59
    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 62
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/community/a/ac;->d:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1083
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 45
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xueqiu/android/community/a/ac;->d:I

    return v0
.end method
