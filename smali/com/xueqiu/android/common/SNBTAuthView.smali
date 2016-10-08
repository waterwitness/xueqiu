.class public Lcom/xueqiu/android/common/SNBTAuthView;
.super Lcom/tencent/tauth/TAuthView;
.source "SNBTAuthView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/tauth/TAuthView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 24
    :try_start_0
    invoke-super {p0, p1}, Lcom/tencent/tauth/TAuthView;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    const v1, 0x7f0e00e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/xueqiu/android/common/SNBTAuthView$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/SNBTAuthView$1;-><init>(Lcom/xueqiu/android/common/SNBTAuthView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/xueqiu/android/common/SNBTAuthView;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 42
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/SNBTAuthView;->finish()V

    goto :goto_0
.end method
