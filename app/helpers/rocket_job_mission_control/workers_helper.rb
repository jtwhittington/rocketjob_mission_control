module RocketJobMissionControl
  module WorkersHelper

    def worker_card_class(worker)
      if worker.zombie?
        'callout-zombie-top'
      else
        map = {
          running:  'callout-success-top',
          paused:   'callout-warning-top',
          stopping: 'callout-alert-top',
        }
        map[worker.state] || 'callout-info-top'
      end
    end

  end
end
