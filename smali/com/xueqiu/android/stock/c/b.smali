.class public Lcom/xueqiu/android/stock/c/b;
.super Lcom/xueqiu/android/common/c;
.source "F10PageFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:Lcom/xueqiu/android/stock/a/d;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/b;->f:Z

    .line 42
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/b;->g:Z

    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/b;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/b;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/b;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/xueqiu/android/stock/c/b;->b:I

    new-instance v3, Lcom/xueqiu/android/stock/c/b$1;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/stock/c/b$1;-><init>(Lcom/xueqiu/android/stock/c/b;Lcom/xueqiu/android/base/b/q;)V

    .line 5291
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ak;->b(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/b;)Lcom/xueqiu/android/stock/a/d;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/b;->e:Lcom/xueqiu/android/stock/a/d;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/xueqiu/android/stock/c/b;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/xueqiu/android/stock/c/b;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/b;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v2, "arg_symbol"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "arg_page"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/b;->e(Landroid/os/Bundle;)V

    .line 58
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/b;)Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/b;->f:Z

    return v0
.end method


# virtual methods
.method public C_()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/b;->C()V

    .line 106
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 73
    const v0, 0x7f03013b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/b;->d:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/b;->d:Landroid/view/View;

    const v1, 0x7f0e04d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/b;->c:Landroid/widget/ListView;

    .line 75
    new-instance v0, Lcom/xueqiu/android/stock/a/d;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/b;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/b;->e:Lcom/xueqiu/android/stock/a/d;

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/b;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/b;->e:Lcom/xueqiu/android/stock/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/b;->g:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/b;->C()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/b;->d:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 65
    const-string v1, "arg_symbol"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/b;->a:Ljava/lang/String;

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 66
    const-string v1, "arg_page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/b;->b:I

    .line 67
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/b;->g:Z

    .line 50
    return-void
.end method
