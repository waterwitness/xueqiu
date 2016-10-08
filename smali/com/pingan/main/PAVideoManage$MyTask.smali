.class Lcom/pingan/main/PAVideoManage$MyTask;
.super Ljava/util/TimerTask;
.source "PAVideoManage.java"


# instance fields
.field final synthetic this$0:Lcom/pingan/main/PAVideoManage;


# direct methods
.method constructor <init>(Lcom/pingan/main/PAVideoManage;)V
    .locals 0

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/pingan/main/PAVideoManage$MyTask;->this$0:Lcom/pingan/main/PAVideoManage;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$MyTask;->this$0:Lcom/pingan/main/PAVideoManage;

    # invokes: Lcom/pingan/main/PAVideoManage;->myTask()V
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$1400(Lcom/pingan/main/PAVideoManage;)V

    .line 1397
    return-void
.end method
