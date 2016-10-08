.class public final Lcom/xueqiu/android/view/wheel/b;
.super Ljava/lang/Object;
.source "WheelRecycle.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xueqiu/android/view/wheel/WheelView;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/view/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/view/wheel/b;->c:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 47
    return-void
.end method

.method static a(Ljava/util/List;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 147
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 115
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p1
.end method


# virtual methods
.method public final a(Landroid/widget/LinearLayout;ILcom/xueqiu/android/view/wheel/a;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 60
    move v0, v1

    move v2, p2

    .line 61
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 73
    return v2

    .line 2054
    :cond_0
    iget v3, p3, Lcom/xueqiu/android/view/wheel/a;->a:I

    .line 1079
    if-lt p2, v3, :cond_3

    invoke-virtual {p3}, Lcom/xueqiu/android/view/wheel/a;->a()I

    move-result v3

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    .line 62
    :goto_1
    if-nez v3, :cond_5

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2125
    iget-object v4, p0, Lcom/xueqiu/android/view/wheel/b;->c:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v4}, Lcom/xueqiu/android/view/wheel/WheelView;->getViewAdapter()Lcom/xueqiu/android/view/wheel/a/c;

    move-result-object v4

    invoke-interface {v4}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v4

    .line 2127
    if-ltz p2, :cond_1

    if-lt p2, v4, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/xueqiu/android/view/wheel/b;->c:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 2394
    iget-boolean v4, v4, Lcom/xueqiu/android/view/wheel/WheelView;->a:Z

    .line 2127
    if-nez v4, :cond_4

    .line 2129
    iget-object v4, p0, Lcom/xueqiu/android/view/wheel/b;->b:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/xueqiu/android/view/wheel/b;->a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/xueqiu/android/view/wheel/b;->b:Ljava/util/List;

    .line 64
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 65
    if-nez v0, :cond_2

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 71
    :cond_2
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    .line 1079
    goto :goto_1

    .line 2135
    :cond_4
    iget-object v4, p0, Lcom/xueqiu/android/view/wheel/b;->a:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/xueqiu/android/view/wheel/b;->a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/xueqiu/android/view/wheel/b;->a:Ljava/util/List;

    goto :goto_2

    .line 69
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
