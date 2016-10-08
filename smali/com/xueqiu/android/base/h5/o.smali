.class public final Lcom/xueqiu/android/base/h5/o;
.super Ljava/lang/Object;
.source "WebviewErrorHandler.java"


# static fields
.field private static a:I


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/os/Handler;

.field private e:Landroid/view/View;

.field private f:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/xueqiu/android/base/h5/o;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/xueqiu/android/base/h5/o;->b:Z

    .line 19
    iput-boolean v1, p0, Lcom/xueqiu/android/base/h5/o;->c:Z

    .line 21
    iput-object v0, p0, Lcom/xueqiu/android/base/h5/o;->d:Landroid/os/Handler;

    .line 23
    iput-object v0, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/xueqiu/android/base/h5/o;->f:Landroid/webkit/WebView;

    .line 28
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/o;->f:Landroid/webkit/WebView;

    .line 1073
    new-instance v0, Lcom/xueqiu/android/base/h5/o$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/h5/o$2;-><init>(Lcom/xueqiu/android/base/h5/o;)V

    .line 29
    iput-object v0, p0, Lcom/xueqiu/android/base/h5/o;->d:Landroid/os/Handler;

    .line 30
    iput-object p2, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/base/h5/o$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/h5/o$1;-><init>(Lcom/xueqiu/android/base/h5/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/o;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/xueqiu/android/base/h5/o;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/base/h5/o;)Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/h5/o;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/base/h5/o;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/xueqiu/android/base/h5/o;->a:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/base/h5/o;)Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/h5/o;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/base/h5/o;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 13
    .line 2068
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    const v1, 0x7f0e00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2069
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    const v1, 0x7f0e0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    return-void
.end method

.method static synthetic f(Lcom/xueqiu/android/base/h5/o;)Landroid/view/View;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/xueqiu/android/base/h5/o;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/base/h5/o;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 52
    .line 2064
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->d:Landroid/os/Handler;

    sget v1, Lcom/xueqiu/android/base/h5/o;->a:I

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/h5/o;->c:Z

    .line 54
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/h5/o;->b:Z

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    const v1, 0x7f0e00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o;->e:Landroid/view/View;

    const v1, 0x7f0e0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method
