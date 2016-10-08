.class final Lcom/xueqiu/android/common/widget/ab;
.super Landroid/webkit/WebViewClient;
.source "PrivateAgreementDialog.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/z;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/common/widget/z;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ab;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/common/widget/z;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/ab;-><init>(Lcom/xueqiu/android/common/widget/z;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/xueqiu/android/common/widget/z;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading view = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method
