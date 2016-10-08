.class public final Lcom/xueqiu/android/cube/b/k;
.super Lcom/xueqiu/android/common/c;
.source "SelectMarketFragment.java"


# instance fields
.field private a:Lcom/xueqiu/android/cube/b/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 42
    return-void
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f030226

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/k;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1099
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x581

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1100
    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1101
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/k;->a:Lcom/xueqiu/android/cube/b/l;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/k;->a:Lcom/xueqiu/android/cube/b/l;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/cube/b/l;->b(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method

.method private static b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f030110

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    return-object v0
.end method

.method public static u()Lcom/xueqiu/android/cube/b/k;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/xueqiu/android/cube/b/k;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/b/k;-><init>()V

    .line 37
    return-object v0
.end method


# virtual methods
.method public final F_()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->F_()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/k;->a:Lcom/xueqiu/android/cube/b/l;

    .line 122
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0e0130

    .line 52
    const v0, 0x7f030137

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 53
    const v0, 0x7f0e00a1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const v0, 0x7f0e0256

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070358

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    const v0, 0x7f0e04d1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/b/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 57
    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/b/k;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 58
    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/b/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 59
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f070226

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/cube/b/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v1, Lcom/xueqiu/android/cube/b/k$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/b/k$1;-><init>(Lcom/xueqiu/android/cube/b/k;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/b/k;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 67
    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/b/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 68
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f070225

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/cube/b/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Lcom/xueqiu/android/cube/b/k$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/b/k$2;-><init>(Lcom/xueqiu/android/cube/b/k;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/b/k;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 76
    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/b/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 77
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f070227

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/b/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v0, Lcom/xueqiu/android/cube/b/k$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/b/k$3;-><init>(Lcom/xueqiu/android/cube/b/k;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object v2
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/app/Activity;)V

    .line 111
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/cube/b/l;

    move-object v1, v0

    iput-object v1, p0, Lcom/xueqiu/android/cube/b/k;->a:Lcom/xueqiu/android/cube/b/l;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 113
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnFragmentInteractionListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
