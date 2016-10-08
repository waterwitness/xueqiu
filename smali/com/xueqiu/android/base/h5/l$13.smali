.class final Lcom/xueqiu/android/base/h5/l$13;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/l;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xueqiu/android/base/h5/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/l;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l$13;->d:Lcom/xueqiu/android/base/h5/l;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/l$13;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/l$13;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/base/h5/l$13;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    .prologue
    .line 465
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$13;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    iget-object v9, p0, Lcom/xueqiu/android/base/h5/l$13;->d:Lcom/xueqiu/android/base/h5/l;

    iget-object v10, p0, Lcom/xueqiu/android/base/h5/l$13;->b:Ljava/lang/String;

    iget-object v11, p0, Lcom/xueqiu/android/base/h5/l$13;->c:Ljava/lang/String;

    .line 1480
    const-string v2, "wc"

    .line 1481
    iget-object v0, v9, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    .line 2125
    iget-object v6, v0, Lcom/xueqiu/android/base/b/ao;->b:Ljava/lang/String;

    .line 1482
    iget-object v0, v9, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    .line 2129
    iget-object v3, v0, Lcom/xueqiu/android/base/b/ao;->c:Ljava/lang/String;

    .line 1483
    iget-object v0, v9, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    .line 2133
    iget-wide v4, v0, Lcom/xueqiu/android/base/b/ao;->d:J

    .line 1484
    iget-object v0, v9, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    .line 2137
    iget-object v7, v0, Lcom/xueqiu/android/base/b/ao;->e:Ljava/lang/String;

    .line 1486
    new-instance v8, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v8}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 1487
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-static {v1}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1488
    iget-object v0, v9, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v8, v0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/support/v4/a/i;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/h5/l$15;

    invoke-direct {v1, v9, v11, v10}, Lcom/xueqiu/android/base/h5/l$15;-><init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 467
    return-void
.end method
