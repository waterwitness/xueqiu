.class Lcom/xiaomi/push/a/d;
.super Lcom/xiaomi/a/a/c/d;


# instance fields
.field b:J

.field final synthetic c:Lcom/xiaomi/push/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/a/b;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/push/a/d;->c:Lcom/xiaomi/push/a/b;

    invoke-direct {p0}, Lcom/xiaomi/a/a/c/d;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/a/d;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
