#!/bin/bash

# Hugo server management script
case "$1" in
    start)
        echo "Starting Hugo server..."
        bash /workspaces/xNok/.devcontainer/start-hugo.sh
        ;;
    stop)
        echo "Stopping Hugo server..."
        if [ -f /tmp/hugo.pid ]; then
            kill $(cat /tmp/hugo.pid) 2>/dev/null || true
            rm -f /tmp/hugo.pid
            echo "Hugo server stopped."
        else
            echo "Hugo server is not running (no PID file found)."
        fi
        ;;
    restart)
        echo "Restarting Hugo server..."
        $0 stop
        sleep 2
        $0 start
        ;;
    status)
        if [ -f /tmp/hugo.pid ] && ps -p $(cat /tmp/hugo.pid) > /dev/null; then
            echo "✅ Hugo server is running (PID: $(cat /tmp/hugo.pid))"
            echo "🌐 Website: http://localhost:1313"
        else
            echo "❌ Hugo server is not running"
        fi
        ;;
    logs)
        if [ -f /tmp/hugo.log ]; then
            tail -f /tmp/hugo.log
        else
            echo "No Hugo logs found."
        fi
        ;;
    *)
        echo "Usage: $0 {start|stop|restart|status|logs}"
        echo ""
        echo "Commands:"
        echo "  start   - Start the Hugo development server"
        echo "  stop    - Stop the Hugo development server"
        echo "  restart - Restart the Hugo development server"
        echo "  status  - Check if the server is running"
        echo "  logs    - Show Hugo server logs (use Ctrl+C to exit)"
        exit 1
        ;;
esac
