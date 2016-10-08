.class final Lcom/xiaomi/f/i;
.super Lcom/xiaomi/push/service/u;


# instance fields
.field final synthetic a:Lcom/xiaomi/f/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/f/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/f/i;->a:Lcom/xiaomi/f/g;

    invoke-direct {p0}, Lcom/xiaomi/push/service/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/b/d;)V
    .locals 6

    .prologue
    const v0, 0x240c8400

    .line 0
    .line 1000
    iget-boolean v1, p1, Lcom/xiaomi/push/b/d;->e:Z

    .line 0
    if-eqz v1, :cond_0

    .line 2000
    sget-object v2, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 3000
    iget v1, p1, Lcom/xiaomi/push/b/d;->f:I

    .line 4000
    if-lez v1, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/xiaomi/f/g;->a:Z

    mul-int/lit16 v1, v1, 0x3e8

    if-le v1, v0, :cond_1

    :goto_0
    iget v1, v2, Lcom/xiaomi/f/g;->b:I

    if-eq v1, v0, :cond_0

    iput v0, v2, Lcom/xiaomi/f/g;->b:I

    .line 5000
    iget-wide v0, v2, Lcom/xiaomi/f/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/xiaomi/f/g;->c:J

    .line 0
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
