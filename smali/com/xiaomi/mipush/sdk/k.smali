.class public final Lcom/xiaomi/mipush/sdk/k;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:I

.field final synthetic k:Lcom/xiaomi/mipush/sdk/j;


# direct methods
.method private constructor <init>(Lcom/xiaomi/mipush/sdk/j;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/k;->k:Lcom/xiaomi/mipush/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/k;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/k;->i:Z

    iput v1, p0, Lcom/xiaomi/mipush/sdk/k;->j:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mipush/sdk/j;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/k;-><init>(Lcom/xiaomi/mipush/sdk/j;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->b:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/k;->k:Lcom/xiaomi/mipush/sdk/j;

    .line 1000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    .line 0
    invoke-static {v1}, Lcom/xiaomi/push/service/ak;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/k;->k:Lcom/xiaomi/mipush/sdk/j;

    .line 2000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    .line 0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/k;->k:Lcom/xiaomi/mipush/sdk/j;

    .line 3000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->a:Landroid/content/Context;

    .line 0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
