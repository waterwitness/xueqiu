.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$8;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;->send()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$8;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iput-object p2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$8;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/h;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$8;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/community/widget/h;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-void
.end method
