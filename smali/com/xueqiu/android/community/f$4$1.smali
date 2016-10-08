.class final Lcom/xueqiu/android/community/f$4$1;
.super Ljava/lang/Object;
.source "FindPeopleFromWeiBoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/f$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/community/f$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/f$4;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/xueqiu/android/community/f$4$1;->b:Lcom/xueqiu/android/community/f$4;

    iput-object p2, p0, Lcom/xueqiu/android/community/f$4$1;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 291
    packed-switch p2, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/community/f$4$1;->b:Lcom/xueqiu/android/community/f$4;

    iget-object v0, v0, Lcom/xueqiu/android/community/f$4;->a:Lcom/xueqiu/android/community/f;

    iget-object v1, p0, Lcom/xueqiu/android/community/f$4$1;->a:Lcom/xueqiu/android/community/model/User;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/f;->b(Lcom/xueqiu/android/community/f;Lcom/xueqiu/android/community/model/User;)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
