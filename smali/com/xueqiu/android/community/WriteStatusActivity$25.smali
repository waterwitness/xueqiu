.class final Lcom/xueqiu/android/community/WriteStatusActivity$25;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1290
    packed-switch p2, :pswitch_data_0

    .line 1311
    :goto_0
    return-void

    .line 1292
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/WriteStatusActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1293
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->N(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 1294
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->O(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    goto :goto_0

    .line 1297
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/WriteStatusActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1298
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->N(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 1299
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->P(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    goto :goto_0

    .line 1302
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/WriteStatusActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1303
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->N(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    goto :goto_0

    .line 1306
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$25;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/WriteStatusActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    .line 1290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
