.class final Lcom/xueqiu/android/base/h5/l$11$1;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/l$11;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/l$11;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/l$11;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l$11$1;->a:Lcom/xueqiu/android/base/h5/l$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .prologue
    const/4 v7, -0x1

    .line 415
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$11$1;->a:Lcom/xueqiu/android/base/h5/l$11;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l$11;->c:Lcom/xueqiu/android/base/h5/l;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$11$1;->a:Lcom/xueqiu/android/base/h5/l$11;

    iget-object v1, v1, Lcom/xueqiu/android/base/h5/l$11;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l$11$1;->a:Lcom/xueqiu/android/base/h5/l$11;

    iget-object v2, v2, Lcom/xueqiu/android/base/h5/l$11;->b:Ljava/lang/String;

    .line 1428
    iget-object v3, v0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v3

    .line 1429
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1430
    const-string v5, "\u8f93\u5165\u96ea\u7403\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1432
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1433
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1437
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1438
    const v8, 0x7f08004a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f08004c

    .line 1439
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f08004b

    .line 1440
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v10, 0x0

    .line 1438
    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1442
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1445
    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1446
    const/16 v6, 0x81

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1447
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1448
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1450
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1452
    new-instance v5, Lcom/xueqiu/android/base/h5/l$12;

    invoke-direct {v5, v0, v7, v3}, Lcom/xueqiu/android/base/h5/l$12;-><init>(Lcom/xueqiu/android/base/h5/l;Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 1462
    const v3, 0x7f0700b1

    new-instance v5, Lcom/xueqiu/android/base/h5/l$13;

    invoke-direct {v5, v0, v7, v1, v2}, Lcom/xueqiu/android/base/h5/l$13;-><init>(Lcom/xueqiu/android/base/h5/l;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1469
    const v1, 0x7f070070

    new-instance v2, Lcom/xueqiu/android/base/h5/l$14;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/base/h5/l$14;-><init>(Lcom/xueqiu/android/base/h5/l;)V

    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1476
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 416
    return-void
.end method
