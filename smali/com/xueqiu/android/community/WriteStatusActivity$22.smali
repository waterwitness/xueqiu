.class final Lcom/xueqiu/android/community/WriteStatusActivity$22;
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
    .line 1263
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$22;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$22;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->L(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 1267
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$22;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->finish()V

    .line 1268
    return-void
.end method
