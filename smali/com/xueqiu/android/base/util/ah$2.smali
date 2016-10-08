.class final Lcom/xueqiu/android/base/util/ah$2;
.super Ljava/lang/Object;
.source "ReportspamUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/ah;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ah$2;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/xueqiu/android/base/util/ah$2;->b:J

    iput p4, p0, Lcom/xueqiu/android/base/util/ah$2;->c:I

    iput p5, p0, Lcom/xueqiu/android/base/util/ah$2;->d:I

    iput-object p6, p0, Lcom/xueqiu/android/base/util/ah$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ah$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/i;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ah$2;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ah$2;->b:J

    iget v4, p0, Lcom/xueqiu/android/base/util/ah$2;->c:I

    iget v5, p0, Lcom/xueqiu/android/base/util/ah$2;->d:I

    iget-object v6, p0, Lcom/xueqiu/android/base/util/ah$2;->e:Ljava/lang/String;

    .line 1101
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1102
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 1103
    new-instance v7, Lcom/xueqiu/android/base/util/ah$3;

    invoke-direct {v7}, Lcom/xueqiu/android/base/util/ah$3;-><init>()V

    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->b(JIILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 90
    const v0, 0x7f070291

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const v0, 0x7f07023c

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method
