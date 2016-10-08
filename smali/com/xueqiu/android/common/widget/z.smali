.class public Lcom/xueqiu/android/common/widget/z;
.super Landroid/app/Dialog;
.source "PrivateAgreementDialog.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcom/xueqiu/android/common/widget/aa;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/xueqiu/android/common/widget/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/widget/z;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/z;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/z;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    const v0, 0x7f0301b8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/z;->setContentView(I)V

    .line 43
    const v0, 0x7f0e0655

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/z;->c:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0e00e5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/z;->d:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/z;->e:Landroid/widget/CheckBox;

    .line 46
    const v0, 0x7f0e0657

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/z;->f:Landroid/webkit/WebView;

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/common/widget/ab;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/common/widget/ab;-><init>(Lcom/xueqiu/android/common/widget/z;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z;->f:Landroid/webkit/WebView;

    const-string v1, "http://xueqiu.com/f/subscribe-confirm/app"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/widget/z$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/z$1;-><init>(Lcom/xueqiu/android/common/widget/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/widget/z$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/z$2;-><init>(Lcom/xueqiu/android/common/widget/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/widget/z$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/z$3;-><init>(Lcom/xueqiu/android/common/widget/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/z;->setCanceledOnTouchOutside(Z)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/z;)Lcom/xueqiu/android/common/widget/aa;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z;->a:Lcom/xueqiu/android/common/widget/aa;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/xueqiu/android/common/widget/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/widget/z;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/widget/z;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z;->c:Landroid/widget/TextView;

    return-object v0
.end method
