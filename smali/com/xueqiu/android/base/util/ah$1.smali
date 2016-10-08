.class final Lcom/xueqiu/android/base/util/ah$1;
.super Ljava/lang/Object;
.source "ReportspamUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JILjava/lang/String;)Landroid/app/AlertDialog;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ah$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ah$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/base/util/ah$1;->c:Landroid/content/Context;

    iput-wide p4, p0, Lcom/xueqiu/android/base/util/ah$1;->d:J

    iput p6, p0, Lcom/xueqiu/android/base/util/ah$1;->e:I

    iput-object p7, p0, Lcom/xueqiu/android/base/util/ah$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/xueqiu/android/base/util/ah$1;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/xueqiu/android/base/util/ah$1;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/xueqiu/android/base/util/ah$1;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/xueqiu/android/base/util/ah$1;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ah$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ah$1;->d:J

    iget v4, p0, Lcom/xueqiu/android/base/util/ah$1;->e:I

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JIILjava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ah$1;->d:J

    iget v4, p0, Lcom/xueqiu/android/base/util/ah$1;->e:I

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JIILjava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ah$1;->d:J

    iget v4, p0, Lcom/xueqiu/android/base/util/ah$1;->e:I

    const/4 v5, 0x2

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JIILjava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ah$1;->d:J

    iget v4, p0, Lcom/xueqiu/android/base/util/ah$1;->e:I

    const/4 v5, 0x3

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JIILjava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ah$1;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ah$1;->d:J

    iget v4, p0, Lcom/xueqiu/android/base/util/ah$1;->e:I

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/xueqiu/android/base/util/ah$1;->j:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JIILjava/lang/String;)V

    goto :goto_0
.end method
