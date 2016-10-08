.class final Lcom/xueqiu/android/message/SelectTalkActivity$1$1;
.super Ljava/lang/Object;
.source "SelectTalkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/SelectTalkActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/message/SelectTalkActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/SelectTalkActivity$1;I)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1$1;->b:Lcom/xueqiu/android/message/SelectTalkActivity$1;

    iput p2, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1$1;->b:Lcom/xueqiu/android/message/SelectTalkActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    iget v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1$1;->a:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/SelectTalkActivity;->b(I)V

    .line 145
    return-void
.end method
